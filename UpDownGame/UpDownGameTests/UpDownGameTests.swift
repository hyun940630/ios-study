//
//  UpDownGameTests.swift
//  UpDownGameTests
//
//  Created by xtring on 2021/01/10.
//

import XCTest
@testable import UpDownGame

class UpDownGameTests: XCTestCase {
    
    /*
     * setUp()과 tearDown()는 클래스의 각 테스트 메소드의 호출 전(setUp)/후(tearDown)에 호출됩니다.
     * setUp()과 tearDown()의 역할 : 항목이 존재해야하거나 특정 상태가 필요한 테스트가 있으므로 setUp에 이러한 작업(객체 인스턴스 만들기, db 초기화, 규칙 작성 등)을 수행
     *                           또한 각 테스트가 시작된 위치에서 멈춰야한다는 것을 알기 때문에 앱 상태를 초기 상태(예: 파일 닫기, 연결, 새로 만든 항목 제거, 트랜잭션 콜백 등)
     *                           로 복원원해야 함을 의미합니다.(이 단계는 tearDown에 포함됨)
     *
     * 따라서 테스트 자체에는, 결과를 얻기 위해 테스트 객체에서 수행 할 동작만 포함되어야하며 setUp 및 tearDown은 테스트 코드를 깨끗하고 유연하게 유지하는데 도움이되는 메서드입니다.
     */

    // setUp() : 초기화 코드
    // setUp() 클래스 메소드는 테스트 케이스가 시작될 때 테스트 케이스의 첫 번째 테스트가 실행되기 전에 정확히 한 번 호출됩니다.
    override func setUpWithError() throws {
        // ...
    }

    // tearDown() : 해체 코드
    // tearDown() 클래스 메소드는 모든 개별 테스트가 실행된 후 테스트 케이스가 끝날 때 정확히 한 번 호출됩니다.
    override func tearDownWithError() throws {
        // ...
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
