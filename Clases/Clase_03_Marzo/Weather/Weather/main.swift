//
//  main.swift
//  Weather
//
//  Created by d182_oscar_a on 03/03/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

UIApplicationMain(CommandLine.argc,
                UnsafeMutableRawPointer(CommandLine.unsafeArgv)
                    .bindMemory(
                        to: UnsafeMutablePointer<Int8>.self,
                        capacity:Int(CommandLine.argc)),
                NSStringFromClass(myApplication.self),
                NSStringFromClass(AppDelegate.self)
                    
)
