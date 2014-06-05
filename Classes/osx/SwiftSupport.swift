//
//  SwiftSupport.swift
//  SwiftSupport
//
//  Created by David Stump on 6/5/14.
//

import Foundation

extension String {
    var blank: Bool { return countElements(self) < 0 }
    var present: Bool { return countElements(self) > 0 }
    var uppercase: String { return self.uppercaseString }
    var lowercase: String { return self.lowercaseString }
    var downcase: String { return self.lowercase }
    var upcase: String { return self.uppercase }
    
    func indexOf(char: Character) -> Int? {
        for (index, value) in enumerate(self) {
            if value == char {
                return index
            }
        }
        return nil
    }
    
    func contains(needle: String) -> Bool {
        return NSString(string: self).containsString(needle)
    }
    
    func replace(target: String, with: String) -> String {
        return NSString(string: self).stringByReplacingOccurrencesOfString(target, withString: with)
    }
    
    func remove(str: String) -> String {
        return self.replace(str, with: "")
    }
    
    func truncate(at: Int, ellipsis: Bool = true) -> String {
        var suffix = self.substringFromIndex(at)
        if ellipsis {
            return self.replace(suffix, with: "...")
        } else {
            return self.remove(suffix)
        }
    }
    
    func startsWith(str: String) -> Bool { return self.hasPrefix(str) }
    func endsWith(str: String) -> Bool { return self.hasSuffix(str) }
}

//    var str = "Hello, playground"
//    str.downcase
//    str.blank
//    str.present
//    str.contains("Hello,")
//    str.contains("David")
//    str.replace("playground", with: "World!")
//    str.remove("playground")
//    str.indexOf("p")
//    str.truncate(5)
//    str.startsWith("H")
//    str.startsWith("g")
//    str.endsWith("d")
//    str.endsWith("x")

extension Int {
    func times(task: () -> ()) {
        for i in 0..self {
            task()
        }
    }
}

//    var name = "José".uppercase
//    10.times {
//        println(name)
//    }

extension Array {
    var first: T { return self[0] }
    var second: T { return self[1] }
    var fourty_two: T { return self[42] }
    var last: T { var last = self.count - 1; return self[last] }
    
    func to(pos: Int) -> Array {
        return Array(self[0...pos])
    }
    
    func from(pos: Int) -> Array {
        return Array(self[pos..self.count])
    }
}

//    var things = [1, 2, 3, 4, 5]
//    things.to(1)
//    things.from(1)
//    things.first
//    things.second
//    things.last



