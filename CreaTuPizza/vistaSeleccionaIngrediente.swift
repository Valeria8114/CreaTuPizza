//
//  vistaSeleccionaIngrediente.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 15/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import UIKit




class vistaSeleccionaIngrediente: UIViewController {
    
   var datos = Datos()
    
    @IBOutlet weak var sPeperoni: UISwitch!
    @IBOutlet weak var sPavo: UISwitch!
    @IBOutlet weak var sSalchicha: UISwitch!
 
    @IBOutlet weak var sJamon: UISwitch!
    @IBOutlet weak var sAceituna: UISwitch!
    @IBOutlet weak var sCebolla: UISwitch!
    @IBOutlet weak var sPimiento: UISwitch!
    @IBOutlet weak var sPiña: UISwitch!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
              /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  
    @IBAction func chPeperoni(_ sender: AnyObject) {
        if (sPeperoni.isOn){
            
                datos.ingredientes.append(Ingredientes.Pepperoni)
            
 
        }
        
    }
    
    
    @IBAction func chJamon(_ sender: AnyObject) {
        if (sJamon.isOn){
           
            datos.ingredientes.append(Ingredientes.Jamon)

            
            
        }
    }
    
    @IBAction func chPavo(_ sender: AnyObject) {
        if (sPavo.isOn){
            datos.ingredientes.append(Ingredientes.Pavo)

            }
            
        
    }
    
  
    @IBAction func chSalchicha(_ sender: AnyObject) {
    
        if (sSalchicha.isOn){
            
            datos.ingredientes.append(Ingredientes.Salchicha)
            
            
        }
    }
    
    @IBAction func chAceituna(_ sender: AnyObject) {
        if (sAceituna.isOn){
            
            datos.ingredientes.append(Ingredientes.Aceituna)

            
            
        }
    }
   
    @IBAction func chCebolla(_ sender: AnyObject) {
        if (sCebolla.isOn){
        
            datos.ingredientes.append(Ingredientes.Cebolla)
            
            
        }
    }
    
    @IBAction func chPimiento(_ sender: AnyObject) {
        if (sPimiento.isOn){
            datos.ingredientes.append(Ingredientes.Pimiento)
            
            
        }
    }
    
    @IBAction func chPiña(_ sender: AnyObject) {
        if (sPiña.isOn){
         
            datos.ingredientes.append(Ingredientes.Piña)
            
            
        }
    }

    @IBAction func continuarIngredientes(_ sender: AnyObject) {
        if (datos.ingredientes.count>5){
        print("Solo puedes seleccionar de 1 a 5 ingredientes")}
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ventana = segue.destination as! vistaConfirmar
        ventana.datos = datos}
    
    
    
    
    
}
