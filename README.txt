===============================================
           Kalyug C++ Student Kit
         (By: Himanshu — Version 1.0)
===============================================

✔ Includes:
• MinGW-w64 C++ Compiler (64-bit)
• graphics.h + winbgim.h (WinBGIm library)
• libbgi.a Graphics Link Library
• Example Programs (Hello World + Graphics)
• Build tasks for VS Code

📌 Default Installation Paths:
Compiler:       C:\mingw64
Examples:       %USERPROFILE%\Documents\Kalyug C++ Student Kit\Examples
VSCode Templates: {app}\vscode-templates

After installation — Open a NEW Terminal or Restart PC so PATH updates.

-----------------------------------------------
🚀 Setting up VS Code (Only first time)
-----------------------------------------------
1️⃣ Open VS Code  
2️⃣ Open Folder → Select an Example project folder  
3️⃣ Create folder: .vscode  
4️⃣ Copy tasks.json from:
   C:\Program Files\Kalyug C++ Student Kit\vscode-templates\

You are ready to build!

-----------------------------------------------
🛠️ How to Compile Your Code
-----------------------------------------------
In VS Code:
• Press: Ctrl + Shift + B
• Press: Ctrl + Shift + D
• Select:
   ➤ Build Normal C++
   ➤ Build Graphics C++

Output EXE will appear in:
   .bin\your_program.exe

To run:
   .bin\your_program.exe

-----------------------------------------------
🎯 Terminal Commands (optional)
-----------------------------------------------
Normal program:
    g++ file.cpp -o a.exe

Graphics program:
    g++ file.cpp -o a.exe -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32

-----------------------------------------------
📚 Example Programs Provided
-----------------------------------------------
📌 stars.cpp
✓ First basic program

📌 circle.cpp
📌 rectanglele.cpp
✓ Draws a circle using graphics.h

-----------------------------------------------
❓ Troubleshooting
-----------------------------------------------
🚫 Error: ‘initgraph’ or ‘circle’ undefined
✔ Cause: Missing link flags
✔ Fix: Use “Build Graphics C++” task

🚫 CMD doesn’t recognize g++
✔ Fix: Restart PC or open NEW terminal

-----------------------------------------------
🎁 About This Kit
-----------------------------------------------
This installer helps quickly start C and C++ programming,
especially Classic Computer Graphics used in Indian colleges.

Free to share and improve. No restrictions!

===============================================
         	HAPPY CODING! 😎🔥
===============================================
