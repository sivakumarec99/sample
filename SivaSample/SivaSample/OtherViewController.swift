//
//  OtherViewController.swift
//  SivaSample
//
//  Created by sivakumar on 01/11/21.
//

import UIKit

class OtherViewController: UIViewController {

    let firstView = ViewController()
    
    struct innfo :Codable {
        var Dic:UserInfo
    }
    struct UserInfo : Codable {
        var name:String
        var age:String
        var mail:String
        
//        private enum CodingKeys:String, CodingKey {
//            case nameSrt  = "name"
//            case age
//            case mail
//        }
        
    } 
    override func viewDidLoad() {
        super.viewDidLoad()

        if var user = getUserDetails(){
            
            user.Dic.name = "murugan"
            
           // self.saveUserDetails(info: user)
        }


    }
    

    func getUserDetails()-> innfo?{
        
        let decoder  = PropertyListDecoder()
        
        if let url = Bundle.main.url(forResource:"innfo" , withExtension: "plist"){
            
            if let data = try? Data(contentsOf: url){
                
                do {
                    let user  = try decoder.decode(innfo.self, from: data)
                    return user
                    
                } catch let error {
                    print(error.localizedDescription)
                }
                
            }
        
        }
       return nil
    }
    
//    func saveUserDetails(info:innfo){
//
//        let encoder = PropertyListEncoder()
//        encoder.outputFormat = .xml
//        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("innfo.plist")
//
//        do {
//            let data = try encoder.encode(info)
//            try data.write(to: path)
//        } catch {
//            print(error)
//        }
//
//        let users  = self.getUserDetails()
//
//        print(users ?? "")
//
//    }
}
