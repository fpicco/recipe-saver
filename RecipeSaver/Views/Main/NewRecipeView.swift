//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Florencia Picco on 08/01/2023.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New recipe")
                .navigationTitle("New recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
