//
//  SwiftUIToggleButtonUITests.swift
//  SwiftUIToggleButtonUITests
//
//  Created by Ramill Ibragimov on 06.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import XCTest

class SwiftUIToggleButtonUITests: XCTestCase {

    func testExample() {
        
        let app = XCUIApplication()
        app.launch()
        
        let toggleButton = app.buttons["toggle"]
        
        for _ in 1...9 {
            toggleButton.tap()
        }
    }
}
