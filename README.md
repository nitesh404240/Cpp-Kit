# Kalyug C++ Student Kit

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/Version-1.0-blue.svg)](#)
[![Maintained by Himanshu](https://img.shields.io/badge/Maintained%20by-Himanshu-brightgreen.svg)](#)

A complete C++ development kit for students with everything you need to get started with C++ programming, including graphics support and pre-configured VS Code tasks.

## ✨ Features

- ✅ MinGW-w64 C++ Compiler (64-bit)
- ✅ `graphics.h` + `winbgim.h` (WinBGIm library)
- ✅ `libbgi.a` Graphics Link Library
- ✅ Example Programs (Hello World + Graphics)
- ✅ Pre-configured Build tasks for VS Code

## 📦 What's Included

| Component | Description |
|-----------|-------------|
| **Compiler** | MinGW-w64 GCC 15.2.0 (64-bit) |
| **Graphics Library** | WinBGIm for easy graphics programming |
| **Examples** | Sample C++ programs with graphics |
| **VS Code Setup** | Ready-to-use build tasks |

## 📍 Installation Paths

```
Compiler:           C:\mingw64
Examples:           %USERPROFILE%\Documents\Kalyug C++ Student Kit\Examples
VSCode Templates:   {app}\vscode-templates
```

> **Important:** After installation, open a new terminal or restart your PC to update PATH environment variables.

## 🚀 Quick Start with VS Code

### First-Time Setup `for graphics`

1. Open **VS Code**
2. Click on File(top-left corner)
3. Open a folder → Select Documents
                 → Open "Kalyug C++ Student Kit
                 → Click Select Folder 
5. Check "Trust the authors of all files in the parent folder 'shash'"
6. Click "Yes, i trust the authors
7. Open "Examples/circle.cpp"
8. Install "C/C++ Extensions Pack"
   (your vscode will prompt you else visit)
   ```
   https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack
   ```
9. Open "circle.cpp"
10. Press `Ctrl + Shift + B`
11. Press `Ctrl + Shift + D`
12. Choose "Run Graphics C++"
    `Dont worry it can still  run C`
13. Press `F5` else  `Fn + F5`

You're ready to build! 🎉

## 🛠️ Building Your Code

### Using VS Code Tasks

In VS Code, you can build using keyboard shortcuts or the task menu:

| Action | Keyboard Shortcut |
|--------|-------------------|
| Show all tasks | `Ctrl + Shift + B` |
| Show debug config | `Ctrl + Shift + D` |

**Available Build Tasks:**
- **Build Normal C++** - Compile standard C++ programs
- **Build Graphics C++** - Compile programs using graphics.h

**Output Location:** `.bin\your_program.exe`

### Command Line

#### Standard C++ Program
```bash
g++ file.cpp -o a.exe
```

#### Graphics Program
```bash
g++ file.cpp -o a.exe -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32
```

## 📚 Example Programs

| Program | Type | Description |
|---------|------|-------------|
| `stars.cpp` | Basic | First basic program |
| `circle.cpp` | Graphics | Draws a circle using graphics.h |
| `rectangle.cpp` | Graphics | Draws a rectangle using graphics.h |

## 🐛 Troubleshooting

### Error: 'initgraph' or 'circle' undefined

**Cause:** Missing graphics library link flags

**Solution:** Use the "Build Graphics C++" task instead of the normal build task

### Error: g++ command not recognized

**Cause:** PATH environment variable not updated

**Solution:** 
- Restart your PC, OR
- Open a fresh terminal window (close and reopen your terminal)

### Graphics not displaying

**Cause:** Graphics.h requires specific Windows libraries

**Solution:** Ensure you're using the "Build Graphics C++" task which includes all necessary library links

## 💡 Tips & Tricks

- Always use "Build Graphics C++" task for programs that include `graphics.h`
- Keep your source files in the root folder for easy access
- Output executables appear in `.bin\` directory
- Use the examples as templates for your own programs

## 📖 About This Kit

This toolkit is designed to help students quickly start with C and C++ programming, with special focus on **Classic Computer Graphics** commonly taught in Indian colleges and universities.

### Philosophy

- 🎓 Educational focus
- 🔧 Easy setup and configuration
- 📚 Learning through examples
- 🎨 Graphics programming support

## 🤝 Contributing

This project is free to share and improve. We welcome:
- Bug reports
- Feature suggestions
- Code improvements
- Documentation enhancements

## 📄 License

This project is open source with no restrictions. Free to use, modify, and distribute.

## 🎯 Getting Help

If you encounter issues:

1. Check the **Troubleshooting** section above
2. Review the example programs
3. Verify your installation paths
4. Ensure all PATH variables are properly set

---

**Happy Coding!** 😎🔥

Made with ❤️ by Himanshu
