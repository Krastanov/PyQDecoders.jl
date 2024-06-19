module PyQDecoders

import CondaPkg
import PythonCall

const sp = PythonCall.pynew()
const sps = PythonCall.pynew()
const np = PythonCall.pynew()
const pm = PythonCall.pynew()
const ldpc = PythonCall.pynew()
const ldpccodes = PythonCall.pynew()

function __init__()
    println("NUMPY")
    println("###\n###\n###\n###\n###\n###\n###\n###\n###\n###\n")
    CondaPkg.add_pip("numpy"; version="<2")
    println("SCIPY")
    println("###\n###\n###\n###\n###\n###\n###\n###\n###\n###\n")
    CondaPkg.add_pip("scipy")
    println("LDPC")
    println("###\n###\n###\n###\n###\n###\n###\n###\n###\n###\n")
    CondaPkg.add_pip("ldpc")
    println("PYMATCHING")
    println("###\n###\n###\n###\n###\n###\n###\n###\n###\n###\n")
    CondaPkg.add_pip("pymatching")

    PythonCall.pycopy!(sp, PythonCall.pyimport("scipy"))
    PythonCall.pycopy!(sps, PythonCall.pyimport("scipy.sparse"))
    PythonCall.pycopy!(np, PythonCall.pyimport("numpy"))
    PythonCall.pycopy!(pm, PythonCall.pyimport("pymatching"))
    PythonCall.pycopy!(ldpc, PythonCall.pyimport("ldpc"))
    PythonCall.pycopy!(ldpccodes, PythonCall.pyimport("ldpc.codes"))
end

end # module
