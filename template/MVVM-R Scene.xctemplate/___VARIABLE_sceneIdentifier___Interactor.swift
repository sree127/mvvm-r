//
//  ___VARIABLE_sceneIdentifier___Interactor.swift
//  Stocard
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) 2018 Stocard. All rights reserved.
//

import Foundation

final class ___VARIABLE_sceneIdentifier___Interactor: ___VARIABLE_sceneIdentifier___InteractorProtocol {

  var processedResultUpdated: ((___VARIABLE_sceneIdentifier___Interactor.ProcessedResult) -> Void)?
  private var router: ___VARIABLE_sceneIdentifier___RouterProtocol?
  /*let delegate: ___VARIABLE_sceneIdentifier___Delegate */
  private let containerProvider: SubContainerProviderProtocol?
  private var model: ___VARIABLE_sceneIdentifier___ModelProtocol? {
    return containerProvider?.subContainer(protocols: ___VARIABLE_sceneIdentifier___ModelContainerProtocol.self)?.model
  }

  init(router: ___VARIABLE_sceneIdentifier___RouterProtocol, containerProvider: SubContainerProviderProtocol/*, delegate: ___VARIABLE_sceneIdentifier___Delegate */) {
    self.router = router
    self.containerProvider = containerProvider
  }

  func process(input: ___VARIABLE_sceneIdentifier___Interactor.Input?) {
    // In most cases this will trigger the didProcessOutput()
  }

}
