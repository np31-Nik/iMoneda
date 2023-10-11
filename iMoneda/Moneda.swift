//
//  Moneda.swift
//  iMoneda
//
//  Created by Máster Móviles on 11/10/23.
//

enum Tirada{
    case cara
    case cruz
}

class Moneda{
    
    func lanzar() -> Tirada{
        let bool = Bool.random()
        if(bool){
            return Tirada.cara
        }else{
            return Tirada.cruz
        }
    }
}
