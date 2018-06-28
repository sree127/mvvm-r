//
//  Router.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 27.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import UIKit

protocol Closable: class {
  func close()
}

protocol RouterProtocol: class {
  associatedtype V: UIViewController
  var viewController: V? { get }
  func open(_ viewController: UIViewController, transition: Transition)
}

class Router<U>: RouterProtocol, Closable where U: UIViewController {
  typealias V = U
  
  weak var viewController: V?
  var openTransition: Transition?
  
  func open(_ viewController: UIViewController, transition: Transition) {
    transition.parentViewController = self.viewController
    transition.open(viewController)
  }
  
  func close() {
    guard let openTransition =  openTransition else {
      assertionFailure("No open transitions")
      return
    }
    guard let viewController = viewController else {
      assertionFailure("Nothing to close")
      return
    }
    openTransition.close(viewController)
  }
}
