## Setup
To setup debugging for Odin programs on Windows with VsCode follow these steps:

- make sure you have the [C/C++ extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) (VsCode extension) installed
- create a `.vscode` folder at the root of your Odin project
- copy the `launch.json` and `tasks.json` into it
- click on the debug tab in VsCode, then click on the debug button at the top (or press F5)


Note: if you want to use a starter template which also sets up a tracking allocator which tracks and reports memory leaks you can use: https://github.com/RednibCoding/Odin-Starter

## FAQ
Q: When I start debugging, I get the following error popup: Configured debug type 'cppvsdbg' is not supported.

A: Make sure you have the [C/C++ extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) installed. If it is already installed, try reinstalling it.