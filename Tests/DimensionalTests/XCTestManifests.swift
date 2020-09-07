import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DimensionalTests.allTests),
        testCase(PhysicalQuantity.allTests),
        testCase(UnitGroup.allTests),
        testCase(UnitOperationsTests.allTests),
        testCase(InternationalSystemTests.allTests),
        testCase(DigitTests.allTests)
    ]
}
#endif
