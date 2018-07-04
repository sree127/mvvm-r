//
//  SettingsViewModel.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation

struct SettingsViewState {
  
  enum AccountError {
    case any(String)
    case accountAlreadyConnected
  }
  
  let loading: Bool
}


protocol SettingsModuleInput: class {
}

protocol SettingsModuleOutput: class {
  var viewState: SettingsViewState? { get }
  var didChangeViewState: (() -> Void)? { get set }
}

final class SettingsViewModel: SettingsModuleOutput {
  
  var didChangeViewState: (() -> Void)?
  var output: SettingsModuleOutput?
  private let router: SettingsRouter.Routes
  
  var viewState: SettingsViewState? {
    didSet {
      didChangeViewState?()
    }
  }
  
  init(router: SettingsRouter.Routes) {
    self.router = router
  }
  
  func closeEvent() {
    router.close()
  }
  
}

extension SettingsViewModel: SettingsModuleInput { }
