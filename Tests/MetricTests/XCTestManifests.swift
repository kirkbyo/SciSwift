import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MeasurementTests.allTests),
        testCase(UnitGroupTests.allTests),
        testCase(UnitOperationsTests.allTests),
        testCase(UnitConversionTests.allTests),
        testCase(DigitTests.allTests)
    ]
}
#endif
