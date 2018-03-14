# cimport c_sampling
cdef extern from "Sampling.h":
    cdef cppclass Sampling:
        Sampling()

        int setPrintLevel(int printLevel);

        int setInputBounds(int nInputs, double *iLowerB, double *iUpperB);

        int setSamplingParams(int nSamples, int nReps, int randomize);

        # virtual int setInputParams(int nInputs, int *nSettings,
                              # double **settings, int *symTable);

        # virtual int setOutputParams(int nOutputs);

        int loadSamples(int nInputs, int nOutputs, int nSamples, double *sampleInputs, double *sampleOutputs, int *sampleStates);

        int getNumSamples();

        int getNumInputs();

        int getNumOutputs();

        int getSamples(int nInputs, int nOutputs, int nSamples,
                       double *sampleInputs, double *sampleOutputs,
                       int *sampleStates);

        int getSamples(int nInputs, int nOutputs, int nSamples,
                       double *sampleInputs, double *sampleOutputs);

        int storeResult(int nOuptuts, int nSamples, double *sampleOutputs,
                        int *sampleStates);


        # virtual int doSampling(PsuadeData* psuadeIO_);

        # virtual int initialize(int initLevel)=0;

        # virtual int refine(int nLevels, int randomize, double threshold,
                           # int nSamples, double *sampleErrors);

        # virtual int repair(char *, int start);

        int allocSampleData();

        int deleteSampleData();

cdef extern from "BoxBehnkenSampling.h":
    cdef cppclass BoxBehnkenSampling:
        BoxBehnkenSampling()

        int initialize(int flag);

        int refine(int ratio,int randomize,double thresh,int nSamples, double *sampleErrs);

        int setSamplingParams(int nSamples, int nReps, int randomize);

        int setInputBounds(int nInputs, double[:] iLowerB, double[:] iUpperB);
