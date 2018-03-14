# cimport c_sampling
from c_sampling cimport Sampling

cdef extern from "BoxBehnkenSampling.h":
    cdef cppclass BoxBehnkenSampling(Sampling):
        BoxBehnkenSampling()

        int initialize(int flag);

        int refine(int ratio,int randomize,double thresh,int nSamples, double *sampleErrs);
