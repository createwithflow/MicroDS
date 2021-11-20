//
//  ViewController.swift
//  MicroDS
//
//  Created by Travis on 2021-11-19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: MicroDSActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        activityIndicator.handleAnimating()
    }

}

