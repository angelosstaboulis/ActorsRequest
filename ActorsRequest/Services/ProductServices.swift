//
//  ProductServices.swift
//  ActorsRequest
//
//  Created by Angelos Staboulis on 22/4/24.
//

import Foundation
actor ProductServices{
    func fetchProducts() async throws -> [Product]{
        guard let url = URL(string:"https://fakestoreapi.com/products/") else{
            return []
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}
