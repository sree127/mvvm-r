//
//  ViewController.swift
//  MVVM_Router
//
//  Created by Sreejith Njamelil on 27.06.18.
//  Copyright © 2018 Sreejith Njamelil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var viewModel: MainViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func pushPressed(_ sender: Any) {
    viewModel.didTriggerSettingsEvent()
  }
  
  @IBAction func popPressed(_ sender: Any) {
  }
}

