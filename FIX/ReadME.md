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
### MSYS2 ninja check-lldb  

<img width="391" height="213" alt="image" src="https://github.com/user-attachments/assets/6166d296-17ac-473b-a656-dbd0d45ca5fe" />

### MSY2 ninja check-all


<img width="408" height="216" alt="image" src="https://github.com/user-attachments/assets/983ede4f-6f73-400c-98fd-12468e254cf2" />

### PowerShell ninja check-lldb


<img width="435" height="248" alt="image" src="https://github.com/user-attachments/assets/cb346514-179d-48dd-80b8-2fea97d5785c" />

### PowerShell ninja check-all


<img width="409" height="258" alt="image" src="https://github.com/user-attachments/assets/edc1b54c-0381-492e-a774-998ef3b5f300" />

 


