//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct ___VARIABLE_sceneIdentifier___ViewState {
}

protocol ___VARIABLE_sceneIdentifier___SceneInput: class {
}

protocol ___VARIABLE_sceneIdentifier___SceneOutput: class {
  var didChangeViewState: (() -> ())? { get set }
}

final class ___VARIABLE_sceneIdentifier___ViewModel {
  
  var didChangeViewState: (() -> Void)?
  var router: ___VARIABLE_sceneIdentifier___Router?
  
  /// View State
  private var viewState: ___VARIABLE_sceneIdentifier___ViewState? {
    didSet {
      didChangeViewState?(viewState)
    }
  }
  
  init(router: ___VARIABLE_sceneIdentifier___Router) {
    self.router = router
  }
}
