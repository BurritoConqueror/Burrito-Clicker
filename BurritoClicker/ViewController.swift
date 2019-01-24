//
//  ViewController.swift
//  BurritoClicker
//
//  Created by 90302781 on 9/24/18.
//  Copyright © 2018 90302781. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var Burritos = 0
    var Grandmas = 0
    var GrandmasPrice = 25
    var Chipotles = 0
    var ChipotlesPrice = 578
    var Factories = 0
    var FactoriesPrice = 2000
    var BurritoMultiplier = 1
    @IBOutlet weak var BurritosText: UILabel!
    @IBOutlet weak var GrandmaButton: UIButton!
    @IBOutlet weak var ChipotleButton: UIButton!
    @IBOutlet weak var FactoryButton: UIButton!
    @IBAction func Button(_ sender: UIButton) {
        Burritos = BurritoMultiplier + Burritos
        BurritosText.text = "\(Burritos)";
    }
    @IBAction func GrandmaButton(_ sender: UIButton) {
        if (Burritos >= GrandmasPrice){
            Grandmas = Grandmas + 1
            BurritoMultiplier = BurritoMultiplier + 1
            Burritos = Burritos - GrandmasPrice
            GrandmasPrice = (Grandmas + 1) * 25
            GrandmaButton.setTitle("\(GrandmasPrice)", for: .normal)
             BurritosText.text = "\(Burritos)"
        }
    }
    @IBAction func ChipotleButton(_ sender: UIButton) {
        if (Burritos >= ChipotlesPrice){
            Chipotles = Chipotles + 1
            BurritoMultiplier = BurritoMultiplier + 38
            Burritos = Burritos - ChipotlesPrice
            ChipotlesPrice = (Chipotles + 1) * 578
            ChipotleButton.setTitle("\(ChipotlesPrice)", for: .normal)
            BurritosText.text = "\(Burritos)"
        }
    }
    @IBAction func FactoryButton(_ sender: UIButton) {
        if (Burritos >= FactoriesPrice){
            Factories = Factories + 1
            BurritoMultiplier = BurritoMultiplier + 200
            Burritos = Burritos - FactoriesPrice
            FactoriesPrice = (Factories + 1) * 2000
            FactoryButton.setTitle("\(FactoriesPrice)", for: .normal)
            BurritosText.text = "\(Burritos)"
        }
    }
}

