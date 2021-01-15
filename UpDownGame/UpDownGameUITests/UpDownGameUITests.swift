//
//  UpDownGameUITests.swift
//  UpDownGameUITests
//
//  Created by xtring on 2021/01/10.
//

import XCTest

class UpDownGameUITests: XCTestCase {   // XCTestCase는 테스트에 필요한 기본적인 기능을 제공하기 때문에, 모든 테스트 클래스는 XCTestCase를 상속받아 구현해야함

    // let app = XCUIApplication()  // 테스트를 위한 UIApplication 세팅
    
    /*
     *  setUp & tearDown : 테스트 전과 후에 필요한 작업을 실행할 수 있는 기회가 제공되는ㄴ setUp과 tearDown 함수는 아래와 같은 순서로 출됩니다.
     *  setUp() -> test_func() -> tearDown()
     *
     *  UI 테스트를 위해서는 XCUIApplication의 launch 함수를 호출하여 앱을 실행해주어야 하는데, setUp에서 호출해주면 테스트 함수가 실행되기 직전에 매번 앱이 실행됩니다.
     */
    
    override func setUpWithError() throws {

        continueAfterFailure = false
        // app.lauch() // 테스트 앱 실행
    }

    override func tearDownWithError() throws {
        
    }
    
    /*
     *  XCUIElement : UI 테스트에서 UIButton 또는 UILabel 등의 컴포넌트를 대신하는 객체입니다.
     *              UI 테스트는 사람이 실제로 앱을 사용하는 것처럼 현재 실행 중인 앱에서 필요한 UI 컴포넌트를 찾아 Tap을 하거나, 텍스트를 입력하고 스크롤을 하는 등의 동작을 구현해야 합니다.
     *              Element 존재 여부인 exists, 터치를 위한 tap, 텍스트 입력을 위한 typeText 함수가 주로 사용하는 XCUIElement의 대표적인 Property 및 함수입니다.
     */
    
    /*
     *  XCUIElementQuery : 화면에 그려진 XCUIElement를 찾기 위해서는 XCUIElementQuery를 사용할 수 있는데, 클래스 이름처럼 Query를 통해 현재 앱에 보이고 있는 Element를 찾을 수 있습니다. 컴포넌트를 찾는 원리는 매우 간단합니다. 뷰는 트리 형태로 구성되어 있어 Element Hierarchy를 이해하면 Element를 쉽게 찾을 수 있습니다.
     */

    func test_func() throws {
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
