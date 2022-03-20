# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libsvm_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libsvm")
JLLWrappers.@generate_main_file("libsvm", UUID("08558c22-525a-5d2a-acf6-0ac6658ffce4"))
end  # module libsvm_jll
