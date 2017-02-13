//
//  ReduxStore.swift
//  ReduxDemo
//
//  Created by Viktor Shcherban on 13/02/2017.
//  Copyright © 2017 Bonial. All rights reserved.
//

import ReSwift

let mainStore = Store<AppState>(
  reducer: CounterReducer(),
  state: nil,
  middleware: [loggingMiddleware]
)





