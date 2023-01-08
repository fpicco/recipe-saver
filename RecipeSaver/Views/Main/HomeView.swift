//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Florencia Picco on 08/01/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My recipes")
        }
        .navigationViewStyle(.stack)
  
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
