//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by Florencia Picco on 08/01/2023.
//

import SwiftUI

struct RecipeView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
           
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 350)
                        .clipped()
                    
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(height: 300)
                .background(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [Color.gray.opacity(0.3), Color.gray]),
                        startPoint: .top,
                        endPoint: .bottom))
                .frame(height: 300)
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 45)
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30){
                    if !recipe.description.isEmpty{
                        Text(recipe.description)
                    }
                    
                    VStack(alignment: .leading, spacing:20){
                        if !recipe.description.isEmpty{
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    VStack(alignment: .leading, spacing:20){
                        if !recipe.description.isEmpty{
                            Text("Directions")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                }
                .frame(width: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            .frame(width: 400)
            
            }
            .ignoresSafeArea(.container, edges:.top)
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[5])
    }
}

