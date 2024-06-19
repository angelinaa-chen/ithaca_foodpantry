//
//  FoodPantry.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import Foundation

struct FoodPantry: Identifiable {
    
    let name: String
    let imageName: String
    let location: String
    let filter: String
    let id = UUID()
    
    static func examples() -> [FoodPantry] {
        
        [FoodPantry(name: "St John's Community Services", imageName: "st_johns", location: "618 W State Street Ithaca, NY, 14850", filter: "Ithaca"),
//         latitude: 42.43923, longitude: -76.50933
         FoodPantry(name: "Ithaca Kitchen Cupboard", imageName: "ithaca_kitchen", location: "Salvation Army, 150 N Albany Street Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Immaculate Conception Food Pantry", imageName: "immaculate_conception", location: "618 W State Street Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Baptized Church of Jesus Christ Pantry", imageName: "baptized_church", location: "412 First Street Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Calvary Baptist Church Pantry", imageName: "calvary_baptist", location: "507 N Albany Street Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "No Mas Lagrimas/No More Tears Pantry", imageName: "no_mas", location: "Henry Saint John Building, 301 S Geneva Street Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Cornell Food Pantry", imageName: "cornell_food", location: "109 McGraw Place Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Southside Community Center Pantry", imageName: "southside_community", location: "305 S Plain St Ithaca, NY, 14850", filter: "Ithaca"),
         FoodPantry(name: "Caroline Food Pantry", imageName: "caroline_food", location: "522 Valley Road, Brooktondale, NY, 14817", filter: "Caroline"),
         FoodPantry(name: "Danby Food Pantry", imageName: "danby_food", location: "Danby Community Church, 1859 Danby Road Danby, NY, 14883", filter: "Danby"),
         FoodPantry(name: "Dryden Kitchen Cupboard", imageName: "dryden_kitchen", location: "Dryden Presbyterian Church, 6 N Street Dryden, NY, 13053", filter: "Dryden"),
         FoodPantry(name: "Enfield Food Distribution", imageName: "enfield_food", location: "182 Enfield Main Road Ithaca, NY, 14850", filter: "Enfield"),
         FoodPantry(name: "Freeville Pantry", imageName: "freeville_pantry", location: "Freeville United Methodist Church, 38 Main Street Freeville, NY, 13068", filter: "Freeville"),
         FoodPantry(name: "Groton Free Food Providers Pantry", imageName: "groton_free", location: "Groton Assembly of God, Joyce Crouch Benevolence Building, 101 Mckinley Avenue Groton, NY, 13073", filter: "Groton"),
         FoodPantry(name: "Healthy Tuesdays - Fresh Produce", imageName: "healthy_tuesdays", location: "Groton Public Library, 112 E Cortland Street Groton, NY, 13073", filter: "Groton"),
         FoodPantry(name: "Interlaken Reformed Church Pantry", imageName: "interlaken_reformed", location: "8315 Main Street Interlaken, NY, 14847", filter: "Interlaken"),
         FoodPantry(name: "Lansing Food Pantry", imageName: "lansing_food", location: "The Rink, 1767 East Shore Drive Lansing, NY, 14850", filter: "Lansing"),
         FoodPantry(name: "McLean Community Church Pantry", imageName: "mclean_community", location: "50 Church Street McLean, NY, 13102", filter: "McLean"),
         FoodPantry(name: "Newfield Kitchen Cupboard", imageName: "newfield_kitchen", location: "Newfield United Methodist Church, 227 Main Street Newfield, NY, 14867", filter: "Newfield"),
         FoodPantry(name: "Trumansburg Food Pantry", imageName: "trumansburg_food", location: "80 E Main Street Trumansburg, NY, 14886", filter: "Trumansburg"),
        ]
    }
    
    static func example1() -> FoodPantry {
        FoodPantry(name: "St John's Community Services", imageName: "st_johns", location: "618 W State Street Ithaca, NY, 14850", filter: "Ithaca")
    }
    
    static func example2() -> FoodPantry {
        FoodPantry(name: "Ithaca Kitchen Cupboard", imageName: "ithaca_kitchen", location: "Salvation Army, 150 N Albany Street Ithaca, NY, 14850", filter: "Ithaca")
    }
}
