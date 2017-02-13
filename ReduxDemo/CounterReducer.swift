//
//  CounterReducer.swift
//  ReduxDemo
//
//  Created by Viktor Shcherban on 13/02/2017.
//  Copyright © 2017 Bonial. All rights reserved.
//

import ReSwift

struct CounterReducer: Reducer {

  func handleAction(action: Action, state: AppState?) -> AppState {
    
    // if no state has been provided, create the default state
    var state = state ?? AppState()
    
    switch action {
      
    case _ as ReSwiftInit:
      state.counter = 0
      break
      
    case Actions.incrementCounter:
      state.counter? += 1
      
    default:
      break
    }
    
    return state

  }

}
