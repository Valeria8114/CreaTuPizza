//
//  vistaConfirmar.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 18/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import UIKit

class vistaConfirmar: UIViewController {
    
    var datos = Datos()


    @IBOutlet weak var verOrden: UILabel!
    @IBOutlet weak var verMasa: UILabel!
    @IBOutlet weak var verTipoQueso: UILabel!
    @IBOutlet weak var verIngredientes: UITextView!

    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        if(datos.tamaño != nil){
            verOrden.text = "\(datos.tamaño!)"
        }
        if(datos.tipoDeMasa != nil){
            verMasa.text = "\(datos.tipoDeMasa!)"
        }
        if(datos.tipoDeQueso != nil){
            verTipoQueso.text = "\(datos.tipoDeQueso!)"
        }
              if(datos.ingredientes.count > 0) {
            var temp = ""
            for i in datos.ingredientes{
                temp += "\(i)\n"
            }
            verIngredientes.text = temp
        }

    
    

    /*
     @IBAction func verOrden(_ sender: AnyObject) {
     }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
    @IBAction func bConfirmar(_ sender: AnyObject) {
        
     
        
        
        
        
        
    }
}
    
    
    

   
