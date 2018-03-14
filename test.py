import sampling as sm

box = sm.BoxBehnkenSampling()
box.setSamplingParams(1, 2, 3)
box.setInputBounds(2, (0,0), (1,1)) # FIXME: are these valid test arguments?
# samples = box.getSamples([1,2,3], [2,3,4], 3) # FIXME: find valid test arguments
