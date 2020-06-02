# Autogenerated wrapper script for libsvm_jll for x86_64-linux-musl
export libsvm, svm_scale, svm_predict, svm_train

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libsvm`
const libsvm_splitpath = ["lib", "libsvm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsvm_path = ""

# libsvm-specific global declaration
# This will be filled out by __init__()
libsvm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsvm = "libsvm.so.so"


# Relative path to `svm_predict`
const svm_predict_splitpath = ["bin", "svm-predict"]

# This will be filled out by __init__() for all products, as it must be done at runtime
svm_predict_path = ""

# svm_predict-specific global declaration
function svm_predict(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(svm_predict_path)
    end
end


# Relative path to `svm_scale`
const svm_scale_splitpath = ["bin", "svm-scale"]

# This will be filled out by __init__() for all products, as it must be done at runtime
svm_scale_path = ""

# svm_scale-specific global declaration
function svm_scale(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(svm_scale_path)
    end
end


# Relative path to `svm_train`
const svm_train_splitpath = ["bin", "svm-train"]

# This will be filled out by __init__() for all products, as it must be done at runtime
svm_train_path = ""

# svm_train-specific global declaration
function svm_train(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(svm_train_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libsvm")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libsvm_path = normpath(joinpath(artifact_dir, libsvm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsvm_handle = dlopen(libsvm_path)
    push!(LIBPATH_list, dirname(libsvm_path))

    global svm_predict_path = normpath(joinpath(artifact_dir, svm_predict_splitpath...))

    push!(PATH_list, dirname(svm_predict_path))
    global svm_scale_path = normpath(joinpath(artifact_dir, svm_scale_splitpath...))

    push!(PATH_list, dirname(svm_scale_path))
    global svm_train_path = normpath(joinpath(artifact_dir, svm_train_splitpath...))

    push!(PATH_list, dirname(svm_train_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

