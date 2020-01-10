//
//  InternationalSystem.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

public struct InternationalSystem {
    public final class Distance: UnitGroup {
        public let label: String
        public let magnitude: Double
        
        fileprivate init(label: String, magnitude: Double) {
            self.magnitude = magnitude
            self.label = label
        }
    }
    
    public final class Time: UnitGroup {
        public let label: String
        public let magnitude: Double
        
        fileprivate init(label: String, magnitude: Double) {
            self.magnitude = magnitude
            self.label = label
        }
    }
}

// MARK: - Unit Definitions
// Distances
let cm = InternationalSystem.Distance(label: "cm", magnitude: 0.1)
let m = InternationalSystem.Distance(label: "m", magnitude: 1)
let km = InternationalSystem.Distance(label: "km", magnitude: 1000)

// Time
let ms = InternationalSystem.Time(label: "ms", magnitude: 1e-3)
let s = InternationalSystem.Time(label: "s", magnitude: 1)
let hour = InternationalSystem.Time(label: "h", magnitude: 60)
