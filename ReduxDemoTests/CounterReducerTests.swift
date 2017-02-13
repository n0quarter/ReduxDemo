//
//  ReduxDemoTests.swift
//  ReduxDemoTests
//
//  Created by Viktor Shcherban on 13/02/2017.
//  Copyright © 2017 Bonial. All rights reserved.
//

import XCTest
@testable import ReduxDemo

class CounterReducerTests: XCTestCase {
  
  func testIncrementingCounter() {
  
    // given
    let testCounterReducer = CounterReducer()
    let testAction = Actions.incrementCounter
    var stubState = AppState()
    stubState.counter = 0
    
    // when
    let resultState = testCounterReducer.handleAction(action: testAction, state: stubState)

    // then
    XCTAssertTrue(resultState.counter == 1)
  }
  
  
}
