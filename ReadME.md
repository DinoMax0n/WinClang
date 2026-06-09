# WinClang

A standalone LLVM-based toolchain for Windows, built for developers who value portability and independence from heavy MSVC environments.

## 📢 ANNOUNCEMENT
Unfortunately-or perhaps fortunately-I’m moving on to high school (and soon to college), so I no longer have the time to compile every update patch. 

**However, I don’t plan to leave the project entirely.** I will continue to maintain and update the build script, focusing on releasing two types of toolchain versions:
* **First major version update patch:** the very first update patch for a new major version (for those who love the cutting-edge features right here and now).
* **Final major version update patch:** the final, highly stable version of the latest update patch (for those who prefer maximum reliability).

If you need a specific intermediate version, the build scripts (more like instructions) are **free software** and licensed under **GPL-3.0**, so you can easily build exactly what you need on your own. Thank you for your understanding!
(Regarding version numbers, I will be compiling versions 23.1.1 through 23.1.9, and similarly for 24, 25, and so on.)


## ⚖️ Licensing

* **Build Scripts:** Licensed under **GPL-3.0**.
* **Source code** Original LLVM code is Apache 2.0.

---

## Why WinClang?

* ✅ **Zero MSVC Dependency** — No need to install Visual Studio or its build tools.
* ✅ **Modern Runtime** — Built with **UCRT** (Universal C Runtime) by default, replacing the legacy MSVCRT.
* ✅ **Deep Portability** — Static linking ensures binaries run on any modern Windows without extra DLLs.
* ✅ **Minimalist** - Only essential patches for MinGW-w64 compatibility.

---

## 📬 Feedback

If you've noticed a bug or have a suggestion on how to make WinClang better, feel free to reach out at: [dinomax0n@gmail.com](mailto:dinomax0n@gmail.com)
