cimport c_sampling
cimport c_boxbehnkensampling

# cdef class Sampling:

    # def __cinit__(self):
    #     self.thisptr = new c_sampling.Sampling()

cdef class BoxBehnkenSampling(Sampling):

    cdef c_boxbehnkensampling.BoxBehnkenSampling *thisptr

    def __cinit__(self):
        self.thisptr = new c_boxbehnkensampling.BoxBehnkenSampling()

    def __dealloc__(self):
        del self.thisptr

    def setSamplingParams(self, nSamples, nReps, randomize):
        self.thisptr.setSamplingParams(nSamples, nReps, randomize);

    # def setInputBounds(self, int nInputs, double[:] lower, double[:] upper):
    #     self.thisptr.setInputBounds(nInputs, lower, upper)
