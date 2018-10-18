// MARK: Protocols

/** Container protocol to be implemented by container provider */
protocol ___VARIABLE_sceneIdentifier___ModelContainerProtocol {
  var model: ___VARIABLE_sceneIdentifier___ModelProtocol { get }
}

/** Interface to operations being performed on service / model layer */
protocol ___VARIABLE_sceneIdentifier___ModelProtocol: class {
  // Functions to be called on services / db
}

/** Protocol containing functions implemented by ViewModel */
protocol ___VARIABLE_sceneIdentifier___ViewModelProtocol: class {
  var processedResultUpdated: ((___VARIABLE_sceneIdentifier___ViewModel.ProcessedResult) -> Void)? { get set }
  func process(input: ___VARIABLE_sceneIdentifier___ViewModel.Input?)
}