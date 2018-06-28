//
//  SettingsRoute.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation

protocol SettingsRoute {
  var settingsTransition: Transition { get }
  func openSettingsModule()
}

extension SettingsRoute where Self: RouterProtocol {
  func openSettingsModule() {
    let module = SettingsModule()
    let transition = settingsTransition
    module.router.openTransition =  transition
    open(module.viewController, transition: transition)
  }
}
