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
  var viewState: ___VARIABLE_sceneIdentifier___ViewState? { get }
  var didChangeViewState: (() -> ())? { get set }
}

final class ___VARIABLE_sceneIdentifier___ViewModel {
  
  var didChangeViewState: (() -> Void)?
  var output: ___VARIABLE_sceneIdentifier___ViewState?
  
  /// View State
  var viewState: ___VARIABLE_sceneIdentifier___ViewState? {
    didSet {
      didChangeViewState?()
    }
  }
}
