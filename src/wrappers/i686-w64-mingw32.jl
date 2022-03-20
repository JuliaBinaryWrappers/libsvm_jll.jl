# Autogenerated wrapper script for libsvm_jll for i686-w64-mingw32
export libsvm, svm_predict, svm_scale, svm_train

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("libsvm")
JLLWrappers.@declare_library_product(libsvm, "libsvm.dll")
JLLWrappers.@declare_executable_product(svm_predict)
JLLWrappers.@declare_executable_product(svm_scale)
JLLWrappers.@declare_executable_product(svm_train)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libsvm,
        "bin\\libsvm.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        svm_predict,
        "bin\\svm-predict.exe",
    )

    JLLWrappers.@init_executable_product(
        svm_scale,
        "bin\\svm-scale.exe",
    )

    JLLWrappers.@init_executable_product(
        svm_train,
        "bin\\svm-train.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
