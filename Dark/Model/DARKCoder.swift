//
//  DARKCoder.swift
//  Dark
//
//  Created by surendra kumar on 10/28/17.
//  Copyright © 2017 weza. All rights reserved.
//

import Foundation

class DARKCoder {
    static let sharedInstanse = DARKCoder()
    
    func decode(jsonDecodableObjectofTypeAny : Any)throws -> DarkUser{
        let jsonData =  try JSONSerialization.data(withJSONObject: jsonDecodableObjectofTypeAny, options: .sortedKeys)
        let decoder =  JSONDecoder()
        return try decoder.decode(DarkUser.self, from: jsonData)
    }
    
    func encode(user : DarkUser) throws -> Any{
        let encoder = JSONEncoder()
        let data = try encoder.encode(user)
        return try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    }
}
