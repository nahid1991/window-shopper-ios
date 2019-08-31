//
//  Wage.swift
//  window-shopper
//
//  Created by Nahid on 31/8/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
