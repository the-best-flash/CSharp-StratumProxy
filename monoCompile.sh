mkdir bin
rm bin/*
mcs -optimize+ -recurse:lib/CSharpMinerPlugins/CSharpMiner/CSharpMiner/*.cs -out:CSharpMinerLib.dll -target:library -r:System,System.Core,System.Data,System.Data.DataSetExtensions,System.Security,System.Runtime.Serialization,System.Xml,System.Xml.Linq
mcs -optimize+ -recurse:lib/CSharpMinerPlugins/CSharpMiner/CSharpMiner/StratumPlugin/*.cs -out:bin/StratumPlugin.dll -target:library -r:System,System.Core,System.Data,System.Data.DataSetExtensions,System.Runtime.Serialization,CSharpMinerLib.dll
mcs -optimize+ -target:exe lib/CSharpMinerPlugins/CSharpMiner/CSharpMiner/CSharpMinerProgram/Program.cs -out:CSharpMiner.exe -r:CSharpMinerLib.dll

