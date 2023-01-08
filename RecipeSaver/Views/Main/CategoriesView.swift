//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by Florencia Picco on 08/01/2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){ category in
                    NavigationLink{
                      CategoryView(category: category)
                    } label:{
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
