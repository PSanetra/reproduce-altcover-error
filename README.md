# Reproduction Repository for Altcover Instrumentation Error

This repository contains a minimal reproduction of an altcover instrumentation error.

## How To

Just build the Dockerfile, which is contained in the root directory of this repository:

```bash
$ docker build -t test .
```

The image build should fail with the following error:
```
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error :  [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error : ERROR *** Instrumentation phase failed [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error :  [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error :  [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error : Could not load file or assembly 'Newtonsoft.Json, Version=12.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeed'. Could not find or load a specific file. (0x80131621) [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error : Details written to /src/SimpleAppTests/bin/Debug/netcoreapp3.1/__Saved/AltCover-2020-06-29--09-33-52.log [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(41,5): error : If this problem was detected in the pre-test instrumentation stage of `dotnet test`, then the file may have been moved to /src/SimpleAppTests/bin/Debug/netcoreapp3.1/AltCover-2020-06-29--09-33-52.log when the task completes. [/src/SimpleAppTests/SimpleAppTests.csproj]
Test run for /src/SimpleAppTests/bin/Debug/netcoreapp3.1/SimpleAppTests.dll(.NETCoreApp,Version=v3.1)
Microsoft (R) Test Execution Command Line Tool Version 16.3.0
Copyright (c) Microsoft Corporation.  All rights reserved.

Starting test execution, please wait...

A total of 1 test files matched the specified pattern.

Test Run Successful.
Total tests: 1
     Passed: 1
 Total time: 0.9339 Seconds
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): warning : A total of 0 visits recorded [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018: The "AltCover.Collect" task failed unexpectedly. [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018: System.NullReferenceException: Object reference not set to an instance of an object. [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Zip.openUpdate(String report) in C:\projects\altcover\AltCover\CommandLine.fs:line 79 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Runner.J.writeReportBase@823.Invoke(FSharpOption`1 arg) in C:\projects\altcover\AltCover\Runner.fs:line 823 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Runner.value@877-3.Invoke(Unit unitVar0) in C:\projects\altcover\AltCover\Runner.fs:line 893 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.CommandLine.I.doPathOperation[a](FSharpFunc`2 f, a defaultValue, Boolean store) in C:\projects\altcover\AltCover\CommandLine.fs:line 210 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.CommandLine.doPathOperation@395.Invoke(FSharpFunc`2 f, a defaultValue, Boolean store) in C:\projects\altcover\AltCover\CommandLine.fs:line 395 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Runner.doCoverage(String[] arguments, OptionSet options1) in C:\projects\altcover\AltCover\Runner.fs:line 876 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Main.I.main(String[] arguments) in C:\projects\altcover\AltCover\Main.fs:line 525 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Main.effectiveMain@531.Invoke(String[] arguments) in C:\projects\altcover\AltCover\Main.fs:line 531 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at AltCover.Collect.Execute() in C:\projects\altcover\AltCover\Tasks.fs:line 226 [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at Microsoft.Build.BackEnd.TaskExecutionHost.Microsoft.Build.BackEnd.ITaskExecutionHost.Execute() [/src/SimpleAppTests/SimpleAppTests.csproj]
/root/.nuget/packages/altcover/7.1.776/build/netstandard2.0/AltCover.targets(125,5): error MSB4018:    at Microsoft.Build.BackEnd.TaskBuilder.ExecuteInstantiatedTask(ITaskExecutionHost taskExecutionHost, TaskLoggingContext taskLoggingContext, TaskHost taskHost, ItemBucket bucket, TaskExecutionMode howToExecuteTask) [/src/SimpleAppTests/SimpleAppTests.csproj]
The command '/bin/sh -c dotnet test /p:AltCover=true /p:AltCoverCobertura=coverage.xml /p:CopyLocalLockFileAssemblies="true"' returned a non-zero code: 1
```