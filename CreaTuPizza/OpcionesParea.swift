//
//  OpcionesParea.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 15/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import Foundation

class Datos {
    var tamaño:Tamaño?
    var tipoDeMasa:TipoMasa?
    var tipoDeQueso : TipoQueso?
    var ingredientes : [Ingredientes] = []
    
  
    
}

enum Tamaño{
    case Pequeña, Mediana, Grande
}

enum TipoMasa{
    case Delgada, Crujiente, Gruesa
}

enum TipoQueso{
    case Mozarela, Cheddar, Parmesano, Sin_Queso
}

enum Ingredientes{
    case Jamon, Pepperoni, Pavo, Salchicha, Aceituna, Cebolla, Pimiento, Piña, Anchoa
}

