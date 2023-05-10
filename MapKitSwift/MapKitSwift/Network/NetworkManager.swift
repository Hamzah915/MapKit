//
//  NetworkManager.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import Foundation

class NetworkManager: NetworkableProtocol{
    func getDataFromAPI<T>(with urlString: String, handler: @escaping (Result<T, Error>) -> Void) where T : Decodable {

        let urlString = "https://dummyjson.com/products"
        guard let url = URL(string: urlString) else {return}

        let session = URLSession.shared
        print("Before API")
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                handler(.failure(error))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("Error for response")
                return
            }

            guard let data = data else{
                print("could not get data from API")
                return
            }
            do{
                let userlist = try JSONDecoder().decode(T.self, from: data)
                handler(.success(userlist))
            }catch{
                print(error.localizedDescription)
                }
        }
        task.resume()
        print("End of function API")
    }
    

           
}
