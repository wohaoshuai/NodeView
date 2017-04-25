//
//  Runtime.swift
//  NodeView
//
//  Created by Kelong Wu on 3/1/17.
//  Copyright © 2017 AlienRobotCat. All rights reserved.
//

import Foundation
import UIKit

class Runtime: NSObject{
    
    var cache: [String: Node] = [:]
    var raw: [String: Any] = [:]
    
    var root: Node!
    var current: Node!
    
    init(_ rootView: UIView) {
        super.init()
        loadNode()
    }
    
    func start(){
        
    }
    
    func loadNode(){
        
    }
    
    func eval(_ node: Node){
        
    }
}
