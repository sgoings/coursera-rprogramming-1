library('RUnit')
 
test.suite <- defineTestSuite("assignment1",
                              dirs = file.path("tests"),
                              testFileRegexp = '^\\w+\\-test.R')
 
test.result <- runTestSuite(test.suite)
 
printTextProtocol(test.result)