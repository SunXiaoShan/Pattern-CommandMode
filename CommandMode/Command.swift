//
//  Command.swift
//  CommandMode
//
//  Created by Phineas_Huang on 16/01/2017.
//  Copyright © 2017 SunXiaoShan. All rights reserved.
//

import Cocoa

protocol Command {
    func execute()
    var cmdId:String{get set}
}

class Cmd1:Command  {
    var cmdId: String = ""

    private var recever:Receiver
    init(recever:Receiver) {
        self.recever = recever
    }
    
    func execute() {
        self.recever.handleCmd1()
        print(self.recever.name + ".......... Command 1")
    }
}

class Cmd2:Command {
    var cmdId: String = ""

    private var recever:Receiver
    init(recever:Receiver) {
        self.recever = recever
    }
    
    func execute() {
        self.recever.handleCmd2()
        print(self.recever.name + ".......... Command 2")
    }
}

class Cmd3:Command {
    var cmdId: String = ""

    private var recever:Receiver
    init(recever:Receiver) {
        self.recever = recever
    }
    
    func execute() {
        self.recever.handleCmd3()
        print(self.recever.name + ".......... Command 3")
    }
}
