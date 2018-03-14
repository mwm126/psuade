cimport c_boxbehnkensampling
from c_boxbehnkensampling cimport BoxBehnkenSampling as CBoxBehnkenSampling

cdef class BoxBehnkenSampling:
    cdef c_boxbehnkensampling.BoxBehnkenSampling *thisptr
