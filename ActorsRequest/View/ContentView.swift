//
//  ContentView.swift
//  ActorsRequest
//
//  Created by Angelos Staboulis on 22/4/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = ProductModel ()
    @State var products:[Product]=[]
    var body: some View {
        NavigationStack {
            List(products){product in
                Cell(product: product)
            }.navigationTitle("MV Pattern Demo")
            .navigationBarTitleDisplayMode(.inline)
            
        }.task{
            do {
                self.products = try await model.getAllProducts()
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
}
#Preview {
    ContentView()
}
