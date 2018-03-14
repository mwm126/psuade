cimport c_sampling
cimport c_boxbehnkensampling
from cpython cimport array
import array

cdef class BoxBehnkenSampling(Sampling):

    cdef c_boxbehnkensampling.BoxBehnkenSampling *thisptr

    def __cinit__(self):
        self.thisptr = new c_boxbehnkensampling.BoxBehnkenSampling()

    def __dealloc__(self):
        del self.thisptr

    def setSamplingParams(self, nSamples, nReps, randomize):
        self.thisptr.setSamplingParams(nSamples, nReps, randomize);

    def setInputBounds(self, nInputs, lower, upper):
        cdef array.array up_array = array.array('d', upper)
        cdef array.array low_array = array.array('d', lower)
        return self.thisptr.setInputBounds(nInputs, low_array.data.as_doubles, up_array.data.as_doubles)

    def getSamples(self, inputs, outputs, nSamples):
        cdef array.array in_array = array.array('d', inputs)
        cdef array.array out_array = array.array('d', outputs)
        return self.thisptr.getSamples(len(inputs), len(outputs), nSamples, in_array.data.as_doubles, out_array.data.as_doubles)
