//
//  SearchViewControllerTests.swift
//  SpacePicsTests
//
//  Created by Rajeev Bhatia on 19/05/19.
//  Copyright © 2019 rajeev. All rights reserved.
//

import XCTest
@testable import SpacePics

class SearchViewControllerTests: XCTestCase {

    var searchVC: SearchViewController?
    override func setUp() {
        super.setUp()
        searchVC = SearchViewController(nibName: String(describing: SearchViewController.self), bundle: nil)
    }

    override func tearDown() {
        super.tearDown()
        searchVC = nil
    }
    
    func testButtonNotEnabledWhenTextIsEmpty() {
        guard let searchVC = searchVC else {
            XCTFail("could not init searchVC")
            return
        }
        _ = searchVC.view
        XCTAssert(searchVC.searchTextField.text == "", "search text is not empty at start")
        XCTAssert(searchVC.searchButton.isHidden == true, "search button enabled when text is empty")
    }
    
    func testButtonHiddenChangesAccordingToText() {
        guard let searchVC = searchVC else {
            XCTFail("could not init searchVC")
            return
        }
        _ = searchVC.view
        
        setTextOnSearchField(text: "test")
        
        XCTAssert(searchVC.searchButton.isHidden == false, "search button still hidden when text changes")
        
        setTextOnSearchField(text: "")
        
        XCTAssert(searchVC.searchButton.isHidden == true, "search button enabled when text is empty")
    }
    
    private func setTextOnSearchField(text: String) {
        guard let searchVC = searchVC else { return }
        searchVC.searchTextField.text = text
        searchVC.textFieldDidChange(textField: searchVC.searchTextField)
    }

}
