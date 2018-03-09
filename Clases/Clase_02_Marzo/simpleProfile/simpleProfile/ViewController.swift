//
//  ViewController.swift
//  simpleProfile
//
//  Created by d182_oscar_a on 02/03/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        labelText.text = "Deadmau5 pronounced dead mouse, (real name: Joel Zimmerman) (born January 5, 1981 in Niagara Falls, Ontario) is a Grammy-nominated and Juno winning Canadian electro and progressive house producer, DJ, and performer.He has released 8 albums and made a cameo on the TV show Gossip Girl."
        
        
        
    }
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
    
    var arreglo: [String] = ["AWESOME","GREEN SHEEN","LAPIS LAZULI","SEA FOAM GREEN",
                            "VERY PALE YELLOW","MIDNIGHT GREEN (EAGLE GREEN)"]
    
    @IBOutlet weak var saveButon: UIButton!
    @IBOutlet weak var editBoton: UIButton!
    @IBOutlet weak var deleteBoton: UIButton!
    @IBOutlet weak var labelText: UILabel!
    
    
    @IBAction func YOLO(_ sender: UIButton) {
        arreglo.shuffle()
        //let randomNum = Int(arc4random_uniform(UInt32(5)))
        saveButon.backgroundColor = UIColor(named: arreglo[1])!
        editBoton.backgroundColor = UIColor(named: arreglo[2])!
        deleteBoton.backgroundColor  = UIColor(named: arreglo[3])!
        view.backgroundColor = UIColor(named: arreglo[4])!
        labelText.backgroundColor = UIColor(named: arreglo[5])
        
    }

}

