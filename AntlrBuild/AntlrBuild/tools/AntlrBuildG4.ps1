PARAM
(
	[Parameter(Mandatory=$True)]
	[string] $AntlrFile
)

function GetScriptDir
{
	$InvocationDetails = (Get-Variable MyInvocation -Scope 1).Value;
	Split-Path $InvocationDetails.MyCommand.Path;
}

$currentDir = $(pwd);
$scriptDir = GetScriptDir;

cd $scriptDir;
& java -cp ".\antlr-4.5.1-complete.jar" org.antlr.v4.Tool "$AntlrFile" -Dlanguage=CSharp -visitor;
cd $currentDir;