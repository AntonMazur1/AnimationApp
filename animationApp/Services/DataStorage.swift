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
    
//    let animations = [
//        "pop",
//        "slideLeft",
//        "slideRight",
//        "slideDown",
//        "slideUp",
//        "squeezeLeft",
//        "squeezeRight",
//        "squeezeDown",
//        "squeezeUp",
//        "fadeIn",
//        "fadeOut",
//        "fadeOutIn",
//        "fadeInLeft",
//        "fadeInRight",
//        "fadeInDown",
//        "fadeInUp",
//        "zoomIn",
//        "zoomOut",
//        "fall",
//        "shake",
//        "flipX",
//        "flipY",
//        "morph",
//        "squeeze",
//        "flash",
//        "wobble",
//        "swing"
//    ]
    
    let animations: [AnimationPreset] = AnimationPreset.allCases
    
    let curves: [AnimationCurve] = AnimationCurve.allCases
//    let curves = [
//        "easeIn",
//        "easeOut",
//        "easeInOut",
//        "linear",
//        "spring",
//        "easeInSine",
//        "easeOutSine",
//        "easeInOutSine",
//        "easeInQuad",
//        "easeOutQuad",
//        "easeInOutQuad",
//        "easeInCubic",
//        "easeOutCubic",
//        "easeInOutCubic",
//        "easeInQuart",
//        "easeOutQuart",
//        "easeInOutQuart",
//        "easeInQuint",
//        "easeOutQuint",
//        "easeInOutQuint",
//        "easeInExpo",
//        "easeOutExpo",
//        "easeInOutExpo",
//        "easeInCirc",
//        "easeOutCirc",
//        "easeInOutCirc",
//        "easeInBack",
//        "easeOutBack",
//        "easeInOutBack"
//    ]
    
    private init() {}
}
