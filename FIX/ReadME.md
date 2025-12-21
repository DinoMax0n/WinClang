//===-- MainLoopWindows.cpp -----------------------------------------------===//

//

// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.

// See https://llvm.org/LICENSE.txt for license information.

// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

//

// --- WinClang Patch Information ---

// Base file: LLVM 21.1.8

// Primary Fix: Backported from LLVM 22 (official experimental branch). 

// The core logic for this MinGW fix was developed by the LLVM contributors.

//

// My Modifications (Licensed under MIT):

// I have integrated 'std::mutex' into the PipeEvent class for state protection.

// These specific modifications are provided under the MIT License.

//

// Note from the author:

// I am a beginner in systems programming and I might be wrong about the 

// absolute necessity of a mutex here, as the original fix uses atomics. 

// However, I believe it adds an extra layer of safety. I have tested and 

// compared LLDB builds with and without this mutex, and the results were 

// identical, so it does not negatively affect performance or functionality.

//===----------------------------------------------------------------------===//
 
Download the original LLVM LLDB and replace the file <Path with all LLVM sources>/lldb/source/Host/windows/MainLoopWindows.cpp with the one located in this folder.

## Photos as evidence:
### MSYS2 - <img width="1045" height="367" alt="image" src="https://github.com/user-attachments/assets/0aa2a3d0-a5ee-4646-ac57-471a1bf85ae0" />
### Nativ Windows (PowerShell) - <img width="700" height="418" alt="image" src="https://github.com/user-attachments/assets/1a646c99-6ea8-4b31-9330-9ecb4c74bf71" />

