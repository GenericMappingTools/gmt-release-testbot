# Testbot for GMT releases

[![Build Status](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_apis/build/status/GenericMappingTools.gmt-release-testbot?branchName=master)](https://dev.azure.com/GenericMappingTools/gmt-release-test-bot/_build/latest?definitionId=5&branchName=master)

A testbot for checking the functionality of GMT packages from different sources.

## What does the testbot do?

The testbot installs GMT packages
from different sources (e.g. official installers, Homebrew, Macports, conda-forge)
on different platforms (macOS, Linux and Windows),
and runs some basic commands to check their functionality.

## Test Matrix

- macOS
  - macOS Bundle (macOS 10.14, 10.15)
  - Homebrew (macOS 10.14, 10.15)
  - MacPorts (macOS 10.14, 10.15)
- Windows
  - Installer (x64, x86)
- Linux
  - Fedora (31, 32, 33, Rawhide)
  - CentOS (6, 7, 8)
- Conda
  - macOS 10.15
  - Windows
  - Ubuntu 18.04

## Contributing

Pull requests and suggestions are welcome.

## License

This project is licensed under [the MIT License](LICENSE).

