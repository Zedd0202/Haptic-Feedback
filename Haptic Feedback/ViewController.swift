//
//  ViewController.swift
//  Haptic Feedback
//
//  Created by Zedd on 06/04/2019.
//  Copyright © 2019 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var notificationFeedbackGenerator: UINotificationFeedbackGenerator?
    var impactFeedbackGenerator: UIImpactFeedbackGenerator?
    var selectionFeedbackGenerator: UISelectionFeedbackGenerator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupGenerator()
    }
    
    private func setupGenerator() {
        self.notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        self.notificationFeedbackGenerator?.prepare()
    }
    
    @IBAction func success(_ sender: Any) {
        self.notificationFeedbackGenerator?.notificationOccurred(.success)
    }
    
    @IBAction func warning(_ sender: Any) {
        self.notificationFeedbackGenerator?.notificationOccurred(.warning)
    }
    
    @IBAction func error(_ sender: Any) {
        self.notificationFeedbackGenerator?.notificationOccurred(.error)
    }
    
    @IBAction func impactHeavy(_ sender: Any) {
        self.impactFeedbackGenerator = UIImpactFeedbackGenerator()
        self.impactFeedbackGenerator?.impactOccurred()
    }
    
    @IBAction func impactMedium(_ sender: Any) {
        self.impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        self.impactFeedbackGenerator?.impactOccurred()
    }
    
    @IBAction func impactLight(_ sender: Any) {
        self.impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        self.impactFeedbackGenerator?.impactOccurred()
    }
    
    @IBAction func selection(_ sender: Any) {
    }
}
