# Testbot for GMT releases

A testbot for checking the functionality of GMT packages from different sources.

## What does the testbot do?

The testbot installs GMT packages
from different sources (e.g. official installers, Homebrew, Macports, conda-forge)
on different platforms (macOS, Linux and Windows),
and runs some basic commands to check their functionality.

## Test Status

### macOS

| Package Source | macOS version | Status    |
| -------------- | ------------- | --------- |
| Bundle         | macOS 10.15   | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Bundle&configuration=Bundle%20macOS1015)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Bundle         | macOS 10.14   | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Bundle&configuration=Bundle%20macOS1014)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Homebrew       | macOS 10.15   | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Homebrew&configuration=Homebrew%20macOS1015)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Homebrew  	 | macOS 10.14   | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Homebrew&configuration=Homebrew%20macOS1014)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| MacPorts       | macOS 10.15    | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Macports&configuration=Macports%20macOS1015)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| MacPorts       | macOS 10.14    | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Macports&configuration=Macports%20macOS1014)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| conda-forge    | macOS 10.14    | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Conda&configuration=Conda%20macOS)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |

### Windows

| Package Source | Status    |
| -------------- | --------- |
| conda-forge    | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Conda&configuration=Conda%20Windows)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |

### Linux

| Package Source | Linux Distro  | Status    |
| -------------- | ------------- | --------- |
| Copr 			 | Fedora 30     | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Fedora&configuration=Fedora%20v30)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr		 	 | Fedora 31     | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Fedora&configuration=Fedora%20v31)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr           | Fedora 32     | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Fedora&configuration=Fedora%20v32)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr 			 | Fedora Rawhide | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Fedora&configuration=Fedora%20rawhide)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr           | CentOS 6       | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=CentOS&configuration=Fedora%20v6)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr           | CentOS 7       |  [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=CentOS&configuration=Fedora%20v7)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| Copr           | CentOS 8       |  [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=CentOS&configuration=Fedora%20v8)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |
| conda-forge    | Ubuntu 18.04   | [![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master&jobName=Conda&configuration=Conda%20Linux)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master) |


## Contributing

Pull requests and suggestions are welcome.

## License

This project is licensed under [the MIT License](LICENSE).

