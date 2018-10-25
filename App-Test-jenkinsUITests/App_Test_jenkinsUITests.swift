//
//  App_Test_jenkinsUITests.swift
//  App-Test-jenkinsUITests
//
//  Created by Savrabh  on 23/10/18.
//  Copyright © 2018 Saurabh. All rights reserved.
//

import XCTest

class App_Test_jenkinsUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.buttons["Go"].tap()
        
        let labelStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["LABEL"]/*[[".staticTexts[\"tested\"]",".staticTexts[\"LABEL\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        if (labelStaticText.value as! String == "tested")
        {
            print("tested")
        }
        else
        {
            print("untested")
        }

    }
    func testRunLogin()  {
        
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.staticText, identifier:"LABEL").children(matching: .other).element
        let textField = element.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.typeText("Login Id")
        
        let textField2 = element.children(matching: .textField).element(boundBy: 1)
        textField2.tap()
        textField2.typeText("Password")
        
        
        
    }
}
