import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PhysicalQuantity.allTests),
        testCase(UnitGroupTests.allTests),
        testCase(UnitOperationsTests.allTests),
        testCase(UnitConversionTests.allTests),
        testCase(InternationalSystemTests.allTests),
        testCase(DigitTests.allTests)
    ]
}
#endif
