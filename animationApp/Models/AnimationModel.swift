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
    let duration: Double
    let delay: Int
    
    static func getAnimation() -> AnimationModel {
        AnimationModel(
            preset: DataStorage.shared.animations.randomElement()!,
            curve: DataStorage.shared.curves.randomElement()!,
            force: DataStorage.shared.forces.randomElement()!,
            duration: DataStorage.shared.durations.randomElement()!,
            delay: DataStorage.shared.delays.randomElement()!
        )
    }
}
