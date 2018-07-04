//
//  MainRouter.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation

final class MainRouter: Router<ViewController>, MainRouter.Routes {
  
  typealias Routes = SettingsRoute 
  
  var settingsTransition: Transition {
    return PushTransition()
  }
  
  
}
