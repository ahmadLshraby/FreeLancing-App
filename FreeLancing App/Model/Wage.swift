//
//  Wage.swift
//  FreeLancing App
//
//  Created by sHiKoOo on 2/12/19.
//  Copyright © 2019 sHiKoOo. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
//    return Int(round(price / wage))   // desimal to integer depending on 0.5
        return Int(ceil(price / wage))   // descimal to higher integer
    }
}
