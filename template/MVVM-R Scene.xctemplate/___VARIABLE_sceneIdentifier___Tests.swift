//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneIdentifier___ViewController: UIViewController {

  // MARK: Properties

  var viewModel: ___VARIABLE_sceneIdentifier___ViewModelProtocol!
  var viewModelProcessedResult: ___VARIABLE_sceneIdentifier___ViewModel.ProcessedResult? {
    didSet { DispatchQueue.main.async { self.render(viewModelInteraction: self.viewModelProcessedResult) } }
  }

  // MARK: IBOutlets

  // MARK: - View lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel.processedResultUpdated = { self.viewModelProcessedResult = $0 }
  }

  // MARK: - Rendering

  func render(viewModelInteraction: ___VARIABLE_sceneIdentifier___ViewModel.ProcessedResult?) {

  }

  // MARK: - IBActions

}
