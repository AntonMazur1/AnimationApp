//
//  DataStorage.swift
//  animationApp
//
//  Created by Клоун on 05.08.2022.
//

import Foundation
import SpringAnimation

class DataStorage {
    static let shared = DataStorage()
    
    let animations: [AnimationPreset] = AnimationPreset.allCases
    let curves: [AnimationCurve] = AnimationCurve.allCases
    
    private init() {}
}
