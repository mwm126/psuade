cimport c_sampling
from c_sampling cimport Sampling as CSampling

cdef class Sampling:
    cdef c_sampling.Sampling *thatptr
