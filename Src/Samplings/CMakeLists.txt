set_source_files_properties( sampling.pyx PROPERTIES CYTHON_IS_CXX TRUE )

link_directories( ${CMAKE_SOURCE_DIR}/lib )

cython_add_module( sampling sampling.pyx
  BoxBehnkenSampling.cpp
  Sampling.cpp
  )

target_link_libraries( sampling psuade )
