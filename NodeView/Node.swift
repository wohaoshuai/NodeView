//
//  Node.swift
//  NodeView
//
//  Created by Kelong Wu on 3/1/17.
//  Copyright © 2017 AlienRobotCat. All rights reserved.
//

import Foundation
class Node{
    var meta: [String:[String]] = [:]
    var data: [String:[String]] = [:]
    var rule: [String:[String]] = [:]
    
    init() {
        meta["id"] = [UUID().uuidString]
    }
    
    init(_ meta: [String:[String]]){
        self.meta = meta
    }
    
    
}
