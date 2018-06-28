//
//  SettingsModule.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation
import UIKit

protocol SettingsModuleInput: class {
}

protocol SettingsModuleOutput: class {
}

final class SettingsModule {
  var input: SettingsModuleInput {
    return viewModel
  }
  
  var output: SettingsModuleOutput? {
    set {
      viewModel.output = newValue
    }
    get {
      return viewModel.output
    }
  }
  
  private let viewModel: SettingsViewModel
  let router: SettingsRouter
  var viewController: SettingsViewController!

  init() {
    let router = SettingsRouter()
    let viewModel = SettingsViewModel(router: router)
    self.viewModel = viewModel
    self.router = router
    /// Set Settings Controller
    let settingsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
    self.viewController = settingsVC
    settingsVC.viewModel = viewModel
    self.router.viewController = settingsVC
  }
}
