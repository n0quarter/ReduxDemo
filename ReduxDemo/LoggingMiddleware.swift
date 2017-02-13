//
//  LoggingMiddleware.swift
//  ReduxDemo
//
//  Created by Viktor Shcherban on 14/02/2017.
//  Copyright © 2017 Bonial. All rights reserved.
//

import ReSwift

let loggingMiddleware: Middleware = { dispatch, getState in
  return { next in
    return { action in
      
      print("[MIDDLEWARE LOG]: action: \(action)")
      // call next middleware
      return next(action)
      
    }
  }
}
