// ["KEY_TYPE:String", "VALUE_TYPE:Node"] --> { "KEY_TYPE" : "String", "VALUE_TYPE": "Node"}
Dictionary<string, string> ParseCommands(string[] argsArray)
{
    return argsArray
        .Select(arg =>
        {
            var parts = arg.Split(':');
            if (parts.Length != 3)
            {
                throw new ArgumentException($"Invalid argument '{arg}'. Expected -command:value:value");
            }

            if (parts[0].ToUpperInvariant() != "-REPLACE")
            {
                throw new ArgumentException($"unknown command: '{parts[0]}'. Expected -replace");
            }
            return new KeyValuePair<string, string>(parts[1], parts[2]);
        })
        .ToDictionary(
            arg => arg.Key, 
            arg => arg.Value
        );
}

// Method to convert an individual line
// "Hello this file replaces all KEY_TYPE" --> "Hello this file replaces all String"
string ConvertLine(string line, Dictionary<string, string> argsDictionary)
{
    foreach (var arg in argsDictionary)
    {
        line = line.Replace(arg.Key, arg.Value);
    }
    return line;
}

// Open 'inputFileName', convert each line it contains, write back to 'outputFileName'.
void ConvertFile(string inputFileName, string outputFileName, Dictionary<string, string> commands)
{
    // Open input file as a read stream:
    using (var stream = new FileStream(inputFileName, FileMode.Open))
    {
        // As stream:
        using (var reader = new StreamReader(stream))
        {
            // Open an output stream to write to output file:
            using (var writer = new StreamWriter(outputFileName))
            {
                // Read the file line by line:  
                string? line;
                while ((line = reader.ReadLine()) != null)
                {
                    var convertedLine = ConvertLine(line, commands);
                    // Write the line to the output file:
                    writer.WriteLine(convertedLine);
                }
            }
        }
    }
}

// Prints the usage
void PrintUsage()
{
    Console.WriteLine("Usage: Generator.exe inputfile.txt outputfile.gd [-replace:string_to_find:value] [-replace:string_to_find:value] ...");
    Console.WriteLine("Example: Generator.exe array_template.txt NodeArray.gd -replace:ITEM_TYPE:Node");
    Console.WriteLine("Example: Generator.exe dictionary_template.txt ./generated/NodeDictionary.gd -replace:KEY_TYPE:String -replace:VALUE_TYPE:Node");
}

try
{
    if (args.Length < 3)
    {
        throw new ArgumentException("Not enough arguments provided");
    }

    var inputFile = args[0]; 
    var outputFile = args[1];

    var commands = ParseCommands(args.Skip(2).ToArray());
    ConvertFile(inputFile, outputFile, commands);
} catch (Exception e)
{
    Console.WriteLine(e.Message);
    PrintUsage();
}



