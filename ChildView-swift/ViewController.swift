//
//  ViewController.swift
//  ChildView-swift
//
//  Copyright (c) 2014 Corona Labs Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let coronaController = CoronaViewController()  // Step 1
        self.addChildViewController(coronaController)  // Step 2
        
        let view:CoronaView = coronaController.view as! CoronaView
        view.frame = self.view.frame   // Step 3
        self.view.addSubview(view)     // Step 4
        view.run();                    // Step 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

