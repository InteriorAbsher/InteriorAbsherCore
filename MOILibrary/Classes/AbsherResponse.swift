//
//  GeneralResponse.swift
//  MOILibrary
//
//  Created by MacBook Pro on 30/07/1446 AH.
//

import Foundation

public class AbsherResponse<T> {
    public var success: Bool
    public var data: T?
    public var error: String?
    
   public  init(success: Bool, error: String? = nil, data: T? = nil) {
       self.success = success
       self.error = error
        self.data = data
       }
}


