import XCTest

import MetricTests

var tests = [XCTestCaseEntry]()
tests += MetricTests.allTests()
tests += MetricGlobalTests.allTests()
XCTMain(tests)
