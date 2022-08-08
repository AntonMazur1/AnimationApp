//
//  AnimationModel.swift
//  animationApp
//
//  Created by Клоун on 05.08.2022.
//

import Foundation

struct AnimationModel {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.02f", force))
        Duration: \(String(format: "%.02f", duration))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> AnimationModel {
        AnimationModel(
            preset: DataStorage.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStorage.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.1...0.5)
        )
    }
}
