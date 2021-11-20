//
//  ViewController.swift
//  MicroDS
//
//  Created by Travis on 2021-11-19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var activityIndicator: MicroDSActivityIndicatorView!
    @IBOutlet public weak var progressView: MicroDSProgressView!

    let progressSimulator = ProgressSimulator()

    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.observedProgress = progressSimulator.progress
    }
    
    override func viewDidAppear(_ animated: Bool) {
        activityIndicator.handleAnimating()
        progressSimulator.simulateProgress()
    }
}
