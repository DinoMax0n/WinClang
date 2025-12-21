# WinClang

A standalone LLVM-based toolchain for Windows, built for developers who value portability and independence from heavy MSVC environments.

## ⚖️ Licensing

* **Build Scripts:** Licensed under **GPL-3.0**.
* **Fixes & Patches:** Original LLVM code is Apache 2.0. My modifications in the `FIX` folder are licensed under **MIT** (see `FIX/README.md` for details).

---

## Why WinClang?

* ✅ **Zero MSVC Dependency** — No need to install Visual Studio or its build tools.
* ✅ **Modern Runtime** — Built with **UCRT** (Universal C Runtime) by default, replacing the legacy MSVCRT.
* ✅ **Deep Portability** — Static linking ensures binaries run on any modern Windows without extra DLLs.
* ✅ **Minimalist** — Only essential patches for MinGW-w64 compatibility.

---

## 📬 Feedback

If you've noticed a bug or have a suggestion on how to make WinClang better, feel free to reach out at: [dinomax0n@gmail.com](mailto:dinomax0n@gmail.com)
