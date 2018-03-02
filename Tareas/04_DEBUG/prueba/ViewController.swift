//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outtletText: UITextField! //Se agrego el indicador @IBOutlet
    
    @IBOutlet weak var aoutletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aoutletButton.setTitle("Touch me!", for: .normal)
        
    }

    @IBAction func actionButton(_ sender: UIButton) { //Se agrego IBAction y se modico la variable sender por UIBUtton
        outtletText.text = "You are a genius "
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Se hizo la liga del objeto con el target(el metodo a ejecutar)
    //Se cambiaron los outlets, manda un error por que las conexiones de los outlets estaban mal hechos


}

