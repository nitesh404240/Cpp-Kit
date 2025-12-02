# C/C++ Kit

<p align="center">

  <a href="https://github.com/kalyugwasi/Cpp-Kit/releases/latest">
    <img src="https://img.shields.io/github/v/release/kalyugwasi/Cpp-Kit?style=for-the-badge" alt="Latest Version">
  </a>

  <a href="#">
    <img src="https://img.shields.io/badge/Maintained%20by-Himanshu-brightgreen.svg?style=for-the-badge" alt="Maintained by Himanshu">
  </a>

  <a href="https://github.com/kalyugwasi/Cpp-Kit/releases/latest">
    <img src="https://img.shields.io/github/v/release/kalyugwasi/Cpp-Kit?display_name=release&style=for-the-badge" alt="Latest Release">
  </a>

  <a href="https://github.com/kalyugwasi/Cpp-Kit/releases">
    <img src="https://img.shields.io/github/downloads/kalyugwasi/Cpp-Kit/total?style=for-the-badge" alt="Total Downloads">
  </a>

</p>

A complete C/C++ development kit for students with everything you need to get started with C/C++ programming, including graphics support and pre-configured VS Code tasks.

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

### First-Time Setup (For Graphics)

1. Open **VS Code**
2. Go to **File → Open Folder**
3. Select:
   - 📂 `Documents`
   - 📂 `Kalyug C++ Student Kit`
4. Click **Select Folder**
5. If prompted, click:  
   → **Yes, I trust the authors**
6. Open: `Examples/circle.cpp`
7. Install: **C/C++ Extensions Pack**  
   *(VS Code will suggest automatically, or use this link)*  
   https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack
8. Press **Ctrl + Shift + B** → Build
9. Press **Ctrl + Shift + D** → Select **Run Graphics C++**
10. Press **F5** (or **Fn + F5**) → Run

🎉 You’re ready to build graphics programs!


## 🛠️ Building Your Code

### Using VS Code Tasks

| Task | Shortcut |
|------|----------|
| Show all build tasks | `Ctrl + Shift + B` |
| Show debug configuration | `Ctrl + Shift + D` |

**Available Tasks**
- **Build Normal C++** → Standard console apps
- **Build Graphics C++** → Programs using `graphics.h`

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

## 🤝 Contributing

This project is free to share and improve. We welcome:
- Bug reports
- Feature suggestions
- Code improvements
- Documentation enhancements
- Sponsorship

## 📄 License

This project is open source with no restrictions. Free to use, modify, and distribute.

## 🎯 Getting Help

If you encounter issues:

1. Check the **Troubleshooting** section above
2. Contact me at `kumarhimanshu2609@gmail.com`
3. Review the example programs
4. Verify your installation paths
5. Ensure all PATH variables are properly set

---

**Happy Coding!** 😎🔥

Made with ❤️ by Himanshu
