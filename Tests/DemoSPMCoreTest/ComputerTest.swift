import XCTest
@testable import DemoSPMCore

class ComputerTest: XCTestCase {
    
    func test__addTwoInt__shouldEqual() {
        let sut = Computer()
        
        let answer = sut.add(10, rhs: 12)
        let answer2 = sut.add(5, rhs: 12)

        XCTAssertEqual(answer, 22)
        XCTAssertEqual(answer2, 17)
    }
    
    func test__minusTwoInt__shouldEqual() {
        let sut = Computer()

        let answer = sut.minus(10, rhs: 12)
        
        XCTAssertEqual(answer, -2)
    }
    
}
