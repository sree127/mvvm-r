//
//  Transition.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 27.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import Foundation
import UIKit

protocol Transition: class {
  var parentViewController: UIViewController? { get set }
  func open(_ viewController: UIViewController)
  func close(_ viewController: UIViewController)
}
