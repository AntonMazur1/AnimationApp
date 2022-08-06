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
    
    static func getAnimation() -> AnimationModel {
        guard let preset = DataStorage.shared.animations.randomElement(),
              let curve = DataStorage.shared.curves.randomElement(),
              let force = DataStorage.shared.forces.randomElement(),
              let duration = DataStorage.shared.durations.randomElement(),
              let delay = DataStorage.shared.delays.randomElement()
        else { return AnimationModel(preset: "", curve: "", force: 0, duration: 0, delay: 0) }
        
        return AnimationModel(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
    }
}
