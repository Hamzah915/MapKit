//
//  NetworkableProtocol.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import Foundation

protocol NetworkableProtocol{
    func getDataFromAPI<T:Decodable>(with urlString:String, handler: @escaping (Result <T,Error>) -> Void)
    
}
