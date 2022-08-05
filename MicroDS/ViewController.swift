//
//  ViewController.swift
//  MicroDS
//
//  Created by Travis on 2021-11-19.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, ToggleButtonDelegate {
    // MARK: - Defaults
    struct Defaults {
        static let refreshOffsetThreshold: CGFloat = -150
        static let refreshDuration: CGFloat = 5
    }
    
    // MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var activityIndicator: MicroDSActivityIndicatorView!
    @IBOutlet public weak var progressView: MicroDSProgressView!
    @IBOutlet weak var pullToRefreshLabel: UILabel!
    @IBOutlet weak var quitAndRelaunchLabel: UILabel!
    @IBOutlet weak var switchButton: MicroDSSwitchButton!

    // MARK: - Properties
    let progressSimulator = ProgressSimulator()
    let refreshControl = MicroDSRefreshControl()
    private(set) var defaultOffset: CGFloat = 0
    private(set) var hasSetDefault = false
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollview()
        setupProgressView()
        setupLabels()
        setupSwitch()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        activityIndicator.handleAnimating()
        progressSimulator.simulateProgress()
    }
    
    // MARK: - ProgressView
    func setupProgressView() {
        progressView.observedProgress = progressSimulator.progress
    }
    
    func setupLabels() {
        pullToRefreshLabel.font = UIFont(name: "Rubik-Bold", size: 10)
        quitAndRelaunchLabel.font = UIFont(name: "Rubik-SemiBold", size: 10)
    }

    // MARK: Switch
    func setupSwitch() {
        switchButton.delegate = self
    }
    
    // MARK: - Refresh / Scrollview
    func setupScrollview() {
        scrollView.refreshControl = refreshControl
        scrollView.contentInsetAdjustmentBehavior = .scrollableAxes
        scrollView.delegate = self
        refreshControl.setup()
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
    }
    
    //simulate refreshing
    @objc func refresh() {
        DispatchQueue.main.asyncAfter(deadline: .now() + Defaults.refreshDuration) {
            self.refreshControl.endRefreshing()
        }
    }

    func handle(offset: CGFloat) {
        // the first time the scrollview is loaded, set the default offset
        if !hasSetDefault {
            hasSetDefault = true
            defaultOffset = offset
        }
        
        // when the tableview is pulled down further than it's default y position
        // normalized the offset and pass it to the custom refresh control
        if offset < defaultOffset {
            let actualOffset = offset - defaultOffset
            let normalizedOffset = actualOffset / Defaults.refreshOffsetThreshold
            refreshControl.process(offset: normalizedOffset)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        handle(offset: scrollView.contentOffset.y)
    }

    // MARK: Delegate Methods
    func didToggle(sender: ToggleButton) {
        print("toggle")
    }
}
