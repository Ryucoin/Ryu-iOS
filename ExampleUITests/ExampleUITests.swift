//
//  ExampleUITests.swift
//  ExampleUITests
//
//  Created by Wyatt Mufson on 3/11/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest

class ExampleUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSegues() {
        let app = XCUIApplication()
        app.buttons["Button"].tap()
        sleep(2)
        let ok = app.buttons["OK"]
        if ok.exists {
            ok.tap()
            sleep(2)
            let alert = app.alerts["“Example” Would Like to Send You Notifications"]
            if alert.exists {
                let button = alert.buttons["Allow"]
                if button.exists {
                    button.tap()
                }
            }
        }

        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 4).staticTexts["Play now"].tap()
        sleep(2)
    }
}
