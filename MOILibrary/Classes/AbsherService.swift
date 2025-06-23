//
//  File.swift
//  MOILibrary
//
//  Created by asmaa MacBook Pro on 30/07/1446 AH.
//

import Foundation

public class AbsherService {
    
    private static var _helper: IAbsherHelper?
    
    // Get singlton instance
    public static var helper: IAbsherHelper {
        guard let instance = _helper else {
            fatalError("IAbsherHelper has not been registered. Call applyHelper(_:) first.")
        }
        return instance
    }
    
    // Register instance
    public static func applyHelper(_ instance: IAbsherHelper) {
        _helper = instance
    }
    public func printLog(){
        print("welcom to absher library")
    }
}
