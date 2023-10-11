//
//  ViewController.swift
//  iMoneda
//
//  Created by Máster Móviles on 11/10/23.
//

import UIKit

class ViewController: UIViewController {

    let moneda = Moneda()
    
    @IBOutlet weak var labelResp: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lanzarMoneda(_ sender: Any) {
        let tirada = moneda.lanzar()
        
        if(tirada == Tirada.cara){
            labelResp.text=NSLocalizedString("Rcara", comment: "")
            imagen.image=UIImage(named: "cara")
        }else{
            labelResp.text=NSLocalizedString("Rcruz", comment: "")
            imagen.image=UIImage(named: "cruz")
        }
    }
    
}

