//
//  ViewController.swift
//  Stopwatch
//
//  Created by Angela Chen on 9/7/22.
//

import UIKit

class ViewController: UIViewController {
  
  let stopwatch = Stopwatch()
  
  @IBOutlet weak var elapsedTimeLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func startButtonTapped(_ sender: UIButton) {
    // code to start the clock
    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
    stopwatch.start()
    stopwatch.isRunning = true
  }

  @IBAction func stopButtonTapped(_ sender: UIButton) {
    // code to stop the clock
    stopwatch.stop()
    stopwatch.isRunning = false
  }
  
  @objc func updateElapsedTimeLabel(timer: Timer) {
    if stopwatch.isRunning {
      elapsedTimeLabel.text = stopwatch.elapsedTimeAsString()
    } else {
      timer.invalidate()
    }
  }


}

