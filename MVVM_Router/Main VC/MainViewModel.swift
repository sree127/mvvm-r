//
//  MainViewModel.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 28.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation


 class MainViewModel {
  private let router: MainRouter.Routes
  
  init(router: MainRouter.Routes) {
    self.router = router
  }
  
  func didTriggerSettingsEvent(){
    router.openSettingsModule()
  }
}
