# SciSwift

### Metric Units

**Basic Usages**
```swift
import SciSwift

let L1 = 10.0 [m]
let L2 = 5.0 [m]
print(L1 - L2) // 5.0 [m]

let speed1 = 12 [m/s]
let speed2 = 18 [km/h]
print(speed1 - speed2) // 7 [km/h]

func circumference(radius: SciValue<SI.distance>) -> SciValue<SI.distance> {
    return 2 * Double.pi * radius
}

print(circumference(radius: 1 [m]))
```
