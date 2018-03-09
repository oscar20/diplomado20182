//
//  myApplication.swift
//  Weather
//
//  Created by d182_oscar_a on 03/03/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

class myApplication: UIApplication{
    override func sendEvent(_ event: UIEvent) {
        print("Hola")
        super.sendEvent(event) //Si quito esto ya no se despliega a las vistas
    }
}


