//
//  MainModule.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation

final class MainModule {
  
  var mainViewController: ViewController!
  let router: MainRouter
  let viewModel: MainViewModel
  init() {
    let router = MainRouter()
    let viewModel = MainViewModel(router: router)
    self.router = router
    self.viewModel = viewModel
  }
  
  func setViewModel() {
    self.router.viewController = self.mainViewController
    self.mainViewController.viewModel = self.viewModel
  }
}
