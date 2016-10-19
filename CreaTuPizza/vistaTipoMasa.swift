//
//  vistaTipoMasa.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 15/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import UIKit
var tipoMasa = [TipoMasa.Delgada,TipoMasa.Crujiente,TipoMasa.Gruesa]

class vistaTipoMasa: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource

    
{
    
    var datos = Datos()
    
    
    @IBOutlet weak var SeleccionarMasa: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SeleccionarMasa.delegate = self
        self.SeleccionarMasa.dataSource = self
        
        
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
        return tipoMasa.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return   "\(tipoMasa[row])"
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
           datos.tipoDeMasa = TipoMasa.Delgada
            
        }
        else if(row == 1)
        {
             datos.tipoDeMasa = TipoMasa.Crujiente
            
        }
        else
        {
             datos.tipoDeMasa = TipoMasa.Gruesa
        }
      
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ventana = segue.destination as! vistaSeleccionaQueso
        ventana.datos = datos
    
    
        
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

