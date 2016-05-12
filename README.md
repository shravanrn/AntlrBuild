# AntlrBuild
Nuget package to build antlr files as part of the build in Visual Studio (MSBuild)

Calls the antlr tool v 4.5.1 to generates c# lexer, parser and visitor classes from antlr g4 files. Java is required and the "java" command should be in the system path for this command to work. (Note the generated classes are automatically included in the compilation even though they don't appear in visual studio)
