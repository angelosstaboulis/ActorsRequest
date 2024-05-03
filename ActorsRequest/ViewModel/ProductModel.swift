//
//  ProductModel.swift
//  ActorsRequest
//
//  Created by Angelos Staboulis on 22/4/24.
//

import Foundation
@MainActor
class ProductModel:ObservableObject{
    let productServices = ProductServices()
    func getAllProducts() async throws ->[Product] {
        return try await productServices.fetchProducts()
    }
}
