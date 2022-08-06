//
//  ViewController.swift
//  animationApp
//
//  Created by Клоун on 05.08.2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationPresetsLabel: UILabel!
    
    private var animation = AnimationModel.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel(with: animation)
    }
    
    @IBAction func runAnimationTapped(_ sender: SpringButton) {
        setupAnimation(with: animation)
        setupLabel(with: animation)
        animation = AnimationModel.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func setupAnimation(with animationPresets: AnimationModel) {
        animationView.animation = animationPresets.preset
        animationView.curve = animationPresets.curve
        animationView.force = CGFloat(animationPresets.force)
        animationView.duration = CGFloat(animationPresets.duration)
        animationView.delay = animationPresets.delay
        animationView.animate()
    }
    
    private func setupLabel(with animationPresets: AnimationModel) {
        animationPresetsLabel.text = "Preset: \(animationPresets.preset)\nCurve: \(animationPresets.curve)\nForce: \(animationPresets.force)\nDuration: \(animationPresets.duration)\nDelay: \(animationPresets.delay)"
    }
}

