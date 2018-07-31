//
//  ViewController.swift
//  bitcoin
//
//  Created by le on 16/06/2018.
//  Copyright © 2018 LeandroEstrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = URL(string: "https://blockchain.info/pt/ticker"){
            let tarefa = URLSession.shared.dataTask(with: url) {(dados, requisicao, erro)
                in
                
                if erro == nil{
                    if let dadosRetorno = dados {
                        
                        do{
                            if let objetoJson = try JSONSerialization.jsonObject(with: dadosRetorno, options: []) as? [String: Any] {
                                
                                if let brl = ["BRL"]{
                                
                                    print(brl)
                                    
                                }
                        }
                        } catch{
                            print("erro ao formatar o retorno")
                            
                        }
                    }
                    
                    
                }else {
                    print("Deu erro")
                }
                
            }
        tarefa.resume()
        }
        
    

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


    }}

