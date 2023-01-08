//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Florencia Picco on 08/01/2023.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
                name: "American pancakes",
                image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/american-style-pancakes-87119e3.jpg?quality=90&webp=true&resize=300,272",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Breakfast",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Caesar salad",
                image: "https://www.jessicagavin.com/wp-content/uploads/2019/07/caesar-salad-10-1200.jpg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Salad",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Tiramisu",
                image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371597326801.jpeg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Dessert",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Healthy snack",
                image: "https://www.wellplated.com/wp-content/uploads/2020/12/Peanut-Butter-Banana-Smoothie-recipe.jpg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Snack",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Healthy snack",
                image: "https://www.realsimple.com/thmb/tGrs5N3zMDjwk4DqfAirPD0VC0g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/healthy-snacking3-2000-c94f28c1314a4834b29e7a069654ffc9.jpg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Side",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Alfajores",
                image: "https://chipabythedozen.com/wp-content/uploads/2020/03/alfajores-dulce-de-leche-sandwhich-cookies-3-1.jpg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Appetizer",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Potato Spanish Omelette",
                image: "https://www.cocinaabuenashoras.com/files/tortilla-de-patatas-espanola.jpg",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Main",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              ),
        Recipe(
                name: "Smoothie",
                image: "https://hips.hearstapps.com/hmg-prod/images/delish-how-to-make-a-smoothie-horizontal-1542310071.png?crop=1xw:0.843328335832084xh;center,top&resize=1200:*",
                description:"Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
                ingredients:"200g self-raising flour  \n 1 ½ tsp baking powder \n 1 tbsp golden caster sugar \n 3 large eggs \n 25g melted butter \n200ml milk vegetable oil",
                directions:"Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.\nCreate a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.\nWhisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.\nHeat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.\nServe your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.",
               category: "Drink",
               datePublished:"2023-01-03",
               url: "https://www.bbcgoodfood.com/recipes/american-pancakes"
              )
    ]
}
