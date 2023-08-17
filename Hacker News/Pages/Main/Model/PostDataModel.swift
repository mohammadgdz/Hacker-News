//
//  PostDataModel.swift
//  Hacker News
//
//  Created by Mohammad on 2023-08-17.
//

import Foundation

struct PostDataModel: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
