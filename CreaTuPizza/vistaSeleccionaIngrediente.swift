//
//  vistaSeleccionaIngrediente.swift
//  CreaTuPizza
//
//  Created by Valeria Flores on 15/10/16.
//  Copyright © 2016 Valeria Flores. All rights reserved.
//

import UIKit



class vistaSeleccionaIngrediente: UIViewController {

    @IBOutlet weak var Boxbutton: UIButton!
    
   
    var checkbox = UIImage(named: "checked")
    var uncheckbox = UIImage(named: "unchecked")
    var isChecked:Bool = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    @IBAction func clicButton(_ sender: AnyObject) {
    
        if isChecked == true {
            isChecked = false
        } else{
            isChecked = true}

       
        if isChecked == true {
            Boxbutton.setImage(#imageLiteral(resourceName: "checked"), for: UIControlState.normal)
        }else {
            Boxbutton.setImage(#imageLiteral(resourceName: "unchecked"), for: UIControlState.normal)

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

}
