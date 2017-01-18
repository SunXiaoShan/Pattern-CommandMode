//
//  Receiver.swift
//  CommandMode
//
//  Created by Phineas_Huang on 16/01/2017.
//  Copyright © 2017 SunXiaoShan. All rights reserved.
//

import Cocoa

class Receiver: NSObject {
    var name:String = ""
    
    func handleCmd1() {
        print("receive handle cmd1")
    }
    
    func handleCmd2() {
        print("receive handle cmd2")
    }
    
    func handleCmd3() {
        print("receive handle cmd3")
    }
}
