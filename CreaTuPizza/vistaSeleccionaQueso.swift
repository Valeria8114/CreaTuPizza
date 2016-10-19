//
//  vistaSeleccionaQueso.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 15/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import UIKit
var tipoQueso = [TipoQueso.Cheddar,TipoQueso.Mozarela,TipoQueso.Parmesano,TipoQueso.Sin_Queso]

class vistaSeleccionaQueso: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
    
{
    
    var datos = Datos()
    @IBOutlet weak var SeleccionarQueso: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SeleccionarQueso.delegate = self
        self.SeleccionarQueso.dataSource = self
        
        
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tipoQueso[row])"
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            datos.tipoDeQueso = TipoQueso.Cheddar
            
        }
        else if(row == 1)
        {
            datos.tipoDeQueso = TipoQueso.Mozarela
            
        }
        else if(row == 2)
        {
            datos.tipoDeQueso = TipoQueso.Parmesano
        }
        else {
            datos.tipoDeQueso = TipoQueso.Sin_Queso
        }
       
        
        
        
        
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ventana = segue.destination as! vistaSeleccionaIngrediente
        ventana.datos = datos}
        
}

