# ByteGather Tool
The **ByteGather** tool is a simple yet effective solution for downloading files from the web using the Windows command line. This batch script streamlines the downloading process by utilizing the ```certutil``` command, allowing users to fetch files from a given URL and store them locally.

## Features
- **Effortless Downloading**: ByteGather simplifies the process of downloading files by providing a command-line interface. Users can initiate downloads with a single command, making it convenient for both novice and experienced users.

- **Automated File Naming**: The tool automatically determines the filename based on the provided URL, ensuring that the downloaded file retains its original name. This eliminates the need for users to manually specify the filename.

- **Error Handling**: ByteGather provides basic error handling, notifying users if the download process fails for any reason. While it might not offer in-depth diagnostics, it aims to provide a clearer indication of whether the download was successful or not.

## Usage
1. Open the ```ByteShell.cmd``` file on your Windows machine.

2. Run the script and put the URL of the file you want to download.

3. The tool will start the download process, and once complete, it will display a message indicating the successful download of the file. If the download fails, an error message will be shown.

## Example
Suppose you want to download a file named ```example.zip``` from the URL ```https://example.com/downloads/example.zip```. You can put only the link on **ByteShell**.

Demo:
```
ByteGather [Version 0.0.0.0]
(c) Lucas Gabriel (lucmsilva). All rights reserved.

Enter the link to the file: https://example.com/downloads/example.zip
```

## Note
- **ByteGather** is intended for use on Windows systems.
- The tool relies on the ```certutil``` command, which is available on most Windows systems by default.

## Disclaimer
**This tool is provided as-is, and the authors take no responsibility for any unintended usage, damages, or issues that may arise from its use. Users are advised to exercise caution and ensure that they have the necessary permissions to download files from the specified URLs.**