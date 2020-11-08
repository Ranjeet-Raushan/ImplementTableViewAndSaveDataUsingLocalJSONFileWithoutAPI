//  result.swift
//  KelltonTask
//  Created by Ranjeet Raushan on 05/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation
struct Result: Codable{
    let data : [ResultItem]?
 }

struct ResultItem: Codable{
    let label : String?
    let labelDetail : String?
}
