//
//  KeyChain.swift
//  SivaSample
//
//  Created by sivakumar on 02/11/21.
//

import UIKit

class KeyChain: NSObject {
    
    
    func writKeyChain(keyName:String,keyValue:String){
        
        KeychainWrapper.createKeychainValue(keyValue, forIdentifier: keyName)
                
    }

    func deleteKeyChanin(keyName:String){
        
        KeychainWrapper.deleteItemFromKeychain(withIdentifier: keyName)
        
    }

    func updateKeychain(keyName:String,keyValue:String){
        
        KeychainWrapper.updateKeychainValue(keyValue, forIdentifier: keyName)
        
    }
    
    
    

}
