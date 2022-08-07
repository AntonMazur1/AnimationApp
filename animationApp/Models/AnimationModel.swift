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
    let force: Int
    let duration: Int
    let delay: Double
    
    var description: String {
        "Preset: \(preset)\nCurve: \(curve)\nForce: \(force)\nDuration: \(duration)\nDelay: \(delay)"
    }
    
    static func getAnimation() -> AnimationModel {
        AnimationModel(
            preset: DataStorage.shared.animations.randomElement() ?? "",
            curve: DataStorage.shared.curves.randomElement() ?? "",
            force: (1...5).randomElement() ?? 1,
            duration: (1...4).randomElement() ?? 1,
            delay: Array(stride(from: 0, to: 1, by: 0.2)).randomElement() ?? 1
        )
    }
}
