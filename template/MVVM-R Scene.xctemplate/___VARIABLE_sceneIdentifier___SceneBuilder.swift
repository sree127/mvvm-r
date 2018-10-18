//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

/* UNCOMMENT IN CASE SCENE HAS DELEGATE FUNCTIONS

protocol ___VARIABLE_sceneIdentifier___Delegate {

}
*/

final class ___VARIABLE_sceneIdentifier___SceneBuilder {
  // TODO:- Uncomment Below Line
  var viewController: ___VARIABLE_sceneIdentifier___ViewController
  // TODO:- Uncomment Above Line

  init(containerProvider: SubContainerProviderProtocol/*, delegate: ___VARIABLE_sceneIdentifier___Delegate */) {
    let router = ___VARIABLE_sceneIdentifier___Router()
    let viewModel = ___VARIABLE_sceneIdentifier___ViewModel(router: router, containerProvider: containerProvider/*, delegate: ___VARIABLE_sceneIdentifier___Delegate */)
    // TODO:- Uncomment Below Line
    viewController = // ViewController from storyboard
    viewController.viewModel = viewModel
    // TODO:- Uncomment Above Line
  }
}
