//
//  main.swift
//  CommandMode
//
//  Created by Phineas_Huang on 16/01/2017.
//  Copyright © 2017 SunXiaoShan. All rights reserved.
//

import Foundation

print("Hello, World!")

let recever = Receiver()
let invoker = Invoker()

for _ in 0...5 {
    let cmd:Cmd1 = Cmd1(recever: recever)
    invoker.addCommand(cmd: cmd)
}

for _ in 0...2 {
    let cmd:Cmd2 = Cmd2(recever: recever)
    invoker.addCommand(cmd: cmd)
}

for _ in 0...3 {
    let cmd:Cmd3 = Cmd3(recever: recever)
    invoker.addCommand(cmd: cmd)
}

invoker.sendCommand()
    




