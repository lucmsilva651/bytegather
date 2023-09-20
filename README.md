# Byte (aka. ByteGather)
The **Byte** tool is a simple yet effective solution for downloading files from the web using the Windows command line. This batch script streamlines the downloading process by utilizing the ```certutil``` command, allowing users to fetch files from a given URL and store them locally.

## Features
- **Effortless Downloading**: ByteGather simplifies the process of downloading files by providing a command-line interface. Users can initiate downloads with a single command, making it convenient for both novice and experienced users.

- **Automated File Naming**: The tool automatically determines the filename based on the provided URL, ensuring that the downloaded file retains its original name. This eliminates the need for users to manually specify the filename.

- **Error Handling**: ByteGather provides basic error handling, notifying users if the download process fails for any reason. While it might not offer in-depth diagnostics, it aims to provide a clearer indication of whether the download was successful or not.

## Installation and usage
1. Open the ```InstallToWin.cmd``` file on your Windows machine to install **Byte**. To uninstall, just run the ```UninstallToWin.cmd``` file.

2. Once installed, run the **Command Prompt ```(cmd.exe)```** and run the script using the command ```bdl``` for **Byte**, or ```bdlshell``` for **ByteCLI**. To get help about downloading files with **Byte**, and/or **ByteCLI**, read the examples in the next section.

3. The tool will start the download process, and once complete, it will display a message indicating the successful download of the file. If the download fails, an error message will be shown.

## Example
Let's suppose you want to download a file named ```example.zip``` from the URL ```https://example.com/downloads/example.zip```.

Demo for **Byte**:
```
C:\Users\Admin>bdl https://example.com/downloads/example.zip
```

Demo for **ByteCLI**:
```
C:\Users\Admin>bdlcli
```
```
Byte (ByteCLI) [Version 0.0.0.0]
(c) Lucas Gabriel (lucmsilva). All rights reserved.

Enter the link to the file: https://example.com/downloads/example.zip
```

## Note
- **Byte** is intended for use on Windows systems.
- The tool relies on the ```certutil``` command, which is available on most Windows systems by default.

## Windows Defender
I discovered from a user test that Windows Defender blocks my code for having "malicious content". I still haven't found out why this happens, but I can assure you that my code is 100% clean and virus-free.

## Disclaimer
**This tool is provided as-is, and the authors take no responsibility for any unintended usage, damages, or issues that may arise from its use. Users are advised to exercise caution and ensure that they have the necessary permissions to download files from the specified URLs.**

## License
**2023 - Lucas Gabriel (lucmsilva)** - MIT License

Read the [LICENSE.md](https://github.com/lucmsilva651/bytegather?tab=MIT-1-ov-file#readme) file for more details.