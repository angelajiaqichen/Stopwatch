import Foundation

class Stopwatch {
  
  private var startTime: NSDate?
  var isRunning:Bool = false

  func start() {
    startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  func elapsedTimeAsString() -> String {
    // return the formatted string...
    let diffMinutes = Int(elapsedTime / 60)
    let diffSeconds = Double(elapsedTime) - Double(diffMinutes * 60)
    let displayedTime = String(format: "%02d", diffMinutes) + ":" + String(format: "%04.1f", diffSeconds)
    return displayedTime
  }
  

   
}
