//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

final class ___VARIABLE_sceneIdentifier___SceneBuilder {
  var router: ___VARIABLE_sceneIdentifier___Router
  var viewModel: ___VARIABLE_sceneIdentifier___ViewModel
  
  init() {
    let router = ___VARIABLE_sceneIdentifier___Router()
    self.router = router
    let viewModel = ___VARIABLE_sceneIdentifier___ViewModel(router: router)
    self.viewModel = viewModel
  }
}
