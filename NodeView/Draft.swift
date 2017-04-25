//
//  Draft.swift
//  NodeView
//
//  Created by Kelong Wu on 3/1/17.
//  Copyright © 2017 AlienRobotCat. All rights reserved.
//

import Foundation


func createClassnode(className: String){
    let node = NVNode()
    node.data["className"] = ["0", "NVNode"]
    
}

// MARK: - Runtime Machine
var data: [String:[String]] = [:]
var rule: [String:[String]] = [:]
var dataMap: [String: Any] = [:]
var ruleMap: [String: Any] = [:]

func run(target: NVNode, ruleId: String){
    let rule = target.rule[ruleId]
    if rule == nil{
        print("error: 1 rule not found")
        print("target [\(target)] does not have rule named [\(ruleId)]")
    }
    
    if let rule = rule{
        switch rule[0]{
        case "0":
            runAtomic(target: target, ruleId: rule[1])
        case "3":
            write(target: root, dataId: "", data: [""])
        // todo - work on random target access
        default:
            print("error: 4 insctruction [\(rule[0])] is not in {run} instruction set")
        }
    }
}

func runAtomic(target: NVNode, ruleId: String){
    
    let parameters = read(target: target, dataId: ruleId)
    
    switch ruleId {
    case "print":
        print(parameters[0])
    default:
        print("error: 3 \(ruleId) is not a valid atomic function for target [\(target)]")
    }
    
}

func read(target: NVNode, dataId: String)->[Any]{
    let data = target.data[dataId]
    var result : [Any] = []
    
    if data == nil{
        print("error: 2 data not found")
        print("target [\(target)] does not have data named [\(dataId)]")
    }
    
    if let data = data{
        switch data[0]{
        case "0":
            result.append(data[1])
        case "1":
            if let temp = readMap(target: target, dataId: data[1]){
                result.append(temp)
            }
        default:
            print("error: 4 [\(data[0])] is not in {read} instruction set")
        }
    }
    return result
}

func readMap(target: NVNode, dataId: String)->Any?{
    let result = target.dataMap[dataId]
    if result == nil{
        print("error: 5 [\(dataId)] is not a valid mapped data in target [\(target)]")
    }
    return result
}

func write(target: NVNode, dataId: String, data: [String]){
    
}

func writeMap(target: NVNode, dataId: String, data: Any){
    
}
