//
//  SettingsViewModel.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation

final class SettingsViewModel {
  
  var output: SettingsModuleOutput?
  
  private let router: SettingsRouter.Routes
  
  init(router: SettingsRouter.Routes) {
    self.router = router
  }
  
  func closeEvent() {
    router.close()
  }
}

extension SettingsViewModel: SettingsModuleInput { }
