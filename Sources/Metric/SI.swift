//
//  SI.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

// Base namespace for the International System of Units, typically abbreviated to SI, from
// the French name Système International d'unités.
// https://simple.wikipedia.org/wiki/International_System_of_Units
public struct SI {
    public final class distance: UnitGroup {
        public let label: String
        public let magnitude: Double
        
        fileprivate init(label: String, magnitude: Double) {
            self.magnitude = magnitude
            self.label = label
        }
    }
    
    public final class time: UnitGroup {
        public let label: String
        public let magnitude: Double
        
        fileprivate init(label: String, magnitude: Double) {
            self.magnitude = magnitude
            self.label = label
        }
    }
    
    public final class mass: UnitGroup {
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
let cm = SI.distance(label: "cm", magnitude: 1e2)
let m = SI.distance(label: "m", magnitude: 1)
let km = SI.distance(label: "km", magnitude: 1e-3)

// Time
let ms = SI.time(label: "ms", magnitude: 1e3)
let s = SI.time(label: "s", magnitude: 1)
let hour = SI.time(label: "h", magnitude: 1/60)

// Mass
let g = SI.mass(label: "g", magnitude: 1e3)
let kg = SI.mass(label: "kg", magnitude: 1)
let tonne = SI.mass(label: "tonne", magnitude: 1e-3)
