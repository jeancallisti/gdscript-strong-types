$projectRootFolder = ".."

# Variable containing the path to the executable
$binPath = "$projectRootFolder/generation/src/Generator/Generator/bin"
$exeDebugPath = "$binPath/Debug/net6.0"
$exeReleasePath = "$binPath/Release/net6.0"

# Variable containing the template for the arrays. 
# (you don't have to use both)
$templates= "$projectRootFolder/generation/templates"
$arrayTemplateCSharpStyle = "$templates/" + "array_template_csharpstyle.txt"
$arrayTemplateGDStyle =  "$templates/" + "array_template_gdstyle.txt"

# output folders
$outputCSharpStyle = "$projectRootFolder/addons/csharp-style"
$outputGDStyle = "$projectRootFolder/addons/gdscript-style"

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

    $arrayFileName = $_ + "Array.gd" # For example : "NodeArray.gd"

    # Array: generate file C#-style
    $outputCSharpStyleFile = "$outputCSharpStyle/$arrayFileName"
    & "$exeReleasePath/Generator.exe" "$arrayTemplateCSharpStyle" "$outputCSharpStyleFile" "-replace:VALUE_TYPE:$_"

    # Array: generate file GDScript-style
    $outputGDStyleFile = "$outputGDStyle/$arrayFileName"
    & "$exeReleasePath/Generator.exe" "$arrayTemplateGDStyle" "$outputGDStyleFile" "-replace:VALUE_TYPE:$_"

}


