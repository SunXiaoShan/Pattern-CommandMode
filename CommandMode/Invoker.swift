//
//  Invoker.swift
//  CommandMode
//
//  Created by Phineas_Huang on 16/01/2017.
//  Copyright © 2017 SunXiaoShan. All rights reserved.
//

import Cocoa

protocol InvokerInterface {
    func addCommand(cmd:Command)
    func removeCommand(cmd:Command)
    func sendCommand()
}

class Invoker: NSObject, InvokerInterface {
    
    var commandList = Array<Any>()
    
    func addCommand(cmd:Command) {
        commandList.append(cmd)
    }
    
    func removeCommand(cmd:Command) {
        
    }
    
    func sendCommand() {
        while !commandList.isEmpty {
            let cmd:Command = commandList.first as! Command
            cmd.execute()
            commandList.removeFirst()
        }
    }
}
