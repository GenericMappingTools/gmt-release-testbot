# Testbot for GMT releases

![Test GMT releases](https://github.com/GenericMappingTools/gmt-release-testbot/workflows/Test%20GMT%20releases/badge.svg)

A testbot for checking the functionality of GMT packages from different sources.

## What does the testbot do?

The testbot installs GMT packages
from different sources (e.g. official installers, Homebrew, Macports, conda-forge)
on different platforms (macOS, Linux and Windows),
and runs some basic commands to check their functionality.

## Test Matrix

- macOS
  - macOS Bundle (macOS 10.15, 11.0)
  - Homebrew (macOS 10.15, 11.0)
  - MacPorts (macOS 10.15, 11.10)
- Windows
  - Installer (x64, x86)
- Linux
  - Fedora (32, 33, Rawhide)
  - CentOS (7, 8)
- Conda
  - macOS 10.15
  - Windows
  - Ubuntu 18.04

## Contributing

Pull requests and suggestions are welcome.

## License

This project is licensed under [the MIT License](LICENSE).

