//
//  PushTransition.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 27.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
  var isPresenting: Bool { get set }
}

class PushTransition: NSObject {
  var animator: Animator?
  var isAnimated: Bool = true
  weak var parentViewController: UIViewController?
  
  var completionHandler: (() -> Void)?

  
  init(animator: Animator? = nil, isAnimated: Bool = true) {
    self.animator = animator
    self.isAnimated = isAnimated
  }
}

extension PushTransition: Transition {
  
  func open(_ viewController: UIViewController) {
    self.parentViewController?.navigationController?.delegate = self
    self.parentViewController?.navigationController?.pushViewController(viewController, animated: isAnimated)
  }
  
  func close(_ viewController: UIViewController) {
    self.parentViewController?.navigationController?.popViewController(animated: isAnimated)
  }
}


// MARK: - UINavigationControllerDelegate

extension PushTransition: UINavigationControllerDelegate {
  
  func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    completionHandler?()
  }
  
  func navigationController(_ navigationController: UINavigationController,
                            animationControllerFor operation: UINavigationControllerOperation,
                            from fromVC: UIViewController,
                            to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    guard let animator = animator else {
      return nil
    }
    if operation == .push {
      animator.isPresenting = true
      return animator
    }
    else {
      animator.isPresenting = false
      return animator
    }
  }
}
