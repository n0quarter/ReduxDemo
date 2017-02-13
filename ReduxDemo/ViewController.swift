//
//  ViewController.swift
//  ReduxDemo
//
//  Created by Viktor Shcherban on 13/02/2017.
//  Copyright © 2017 Bonial. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    mainStore.subscribe(self)
  }
  
  func newState(state: AppState) {
    
    DispatchQueue.main.async { [weak self] in
      self?.label.text = "\(state.counter ?? 0)"
    }
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    mainStore.unsubscribe(self)
  }
  
  
  @IBOutlet weak var label: UILabel!

  @IBAction func plusOneTapped(_ sender: Any) {
    
    mainStore.dispatch(Actions.incrementCounter)
  }

}

