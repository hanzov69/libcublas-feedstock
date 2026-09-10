if "%TARGET_PLATFORM%" == "win-arm64" (
    set CUDA_ARCH=arm64
) else (
    set CUDA_ARCH=x64
)

@echo on

cl test.c /I%LIBRARY_INC% /I%LIBRARY_INC%\targets\%CUDA_ARCH% /link /LIBPATH:%LIBRARY_LIB%\%CUDA_ARCH% cublas.lib
