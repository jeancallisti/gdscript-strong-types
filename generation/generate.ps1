$projectRootFolder = ".."

# Variable containing the path to the executable
$binPath = "$projectRootFolder/generation/src/Generator/Generator/bin"
$exeDebugPath = "$binPath/Debug/net6.0"
$exeReleasePath = "$binPath/Release/net6.0"

# Variable containing the template for the arrays. 
# (you don't have to use both)
$templates= "$projectRootFolder/generation/templates"
$arrayTemplate =  "$templates/" + "array_template_gdstyle.txt"
$dictionaryTemplate =  "$templates/" + "dictionary_template_gdstyle.txt"

# Read all lines from file 'input.txt'
Get-Content -Path .\gdscript_types.txt |
# For each line
ForEach-Object { 
    # if line starts with # (i.e. comment) then skip it
    if($_.StartsWith("#")) {
        return
    }

    # if line is empty, skip it
    if($_.Length -eq 0) {
        return
    }

    # if line is all white spaces, skip it
    if($_ -match "^\s+$") {
        return
    }

    # Just show the user what's happening
    " > $_" 


    # Array
    $arrayFileName = $_ + "Array.gd" # For example : "NodeArray.gd"
    $outputArrayFile = "$projectRootFolder/addons/array/$arrayFileName"
    & "$exeReleasePath/Generator.exe" "$arrayTemplate" "$outputArrayFile" "-replace:VALUE_TYPE:$_"

    # Dictionary
    $keyType = "String" # For now we keep it simple
    $subFolder = "String"
    $dictionaryFileName = $_ + $keyType + "Dictionary.gd" # For example : "NodeStringDictionary.gd"
    $outputDictionaryFile = "$projectRootFolder/addons/dictionary/$subFolder/$dictionaryFileName"
    & "$exeReleasePath/Generator.exe" "$dictionaryTemplate" "$outputDictionaryFile" "-replace:KEY_TYPE:$keyType" "-replace:VALUE_TYPE:$_"

}


