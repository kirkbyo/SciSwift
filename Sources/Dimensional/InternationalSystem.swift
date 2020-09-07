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
    
    public final class Mass: UnitGroup {
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
let cm = InternationalSystem.Distance(label: "cm", magnitude: 1e2)
let m = InternationalSystem.Distance(label: "m", magnitude: 1)
let km = InternationalSystem.Distance(label: "km", magnitude: 1e-3)

// Time
let ms = InternationalSystem.Time(label: "ms", magnitude: 1e3)
let s = InternationalSystem.Time(label: "s", magnitude: 1)
let hour = InternationalSystem.Time(label: "h", magnitude: 1/60)

// Mass
let g = InternationalSystem.Mass(label: "g", magnitude: 1e3)
let kg = InternationalSystem.Mass(label: "kg", magnitude: 1)
let tonne = InternationalSystem.Mass(label: "tonne", magnitude: 1e-3)
