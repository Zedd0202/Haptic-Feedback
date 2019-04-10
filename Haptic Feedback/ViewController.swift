//
//  ViewController.swift
//  Haptic Feedback
//
//  Created by Zedd on 06/04/2019.
//  Copyright © 2019 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var feedbackGenerator: UINotificationFeedbackGenerator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupGenerator()
    }
    
    private func setupGenerator() {
        self.feedbackGenerator = UINotificationFeedbackGenerator()
        self.feedbackGenerator?.prepare()
    }
    
    @IBAction func success(_ sender: Any) {
        self.feedbackGenerator?.notificationOccurred(.success)
    }
    
    @IBAction func warning(_ sender: Any) {
        self.feedbackGenerator?.notificationOccurred(.warning)
    }
    
    @IBAction func error(_ sender: Any) {
        self.feedbackGenerator?.notificationOccurred(.error)
    }
}

public class SomePublicClass {                   // explicitly public class
    public var somePublicProperty = 0            // explicitly public class member
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

public extension SomePublicClass {
    public func somePublic() { }
}
