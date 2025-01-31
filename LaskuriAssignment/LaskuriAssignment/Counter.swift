import Foundation

@Observable
class Counter {
    var lowerBound: Int
    var upperBound: Int
    var step: Int
    var ops: Int
    var value: Int
    
    init(lowerBound: Int = 0, upperBound: Int = 5, step: Int = 1, ops: Int = 0, value: Int = 0) {
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        self.step = step
        self.ops = ops
        self.value = lowerBound
    }
    
    func setStep(_ step: Int) {
        self.step = if step <= self.upperBound {
            step
        } else {
            1
        }
    }
    
    func increment() {
        self.value += self.step
        if self.value > self.upperBound {
            self.value = self.lowerBound
        }
        }
    
    func decrement() {
        self.ops += 1
        var erotus = self.value - self.step
        if self.step < 2 {
            erotus = 0
        }
        self.value -= self.step
        if self.value < self.lowerBound {
            self.value = self.upperBound - erotus
                    }
        
    }
    
    
}
