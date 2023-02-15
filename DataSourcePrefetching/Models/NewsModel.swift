//
//  NewsModel.swift
//  DataSourcePrefetching
//
//  Created by rafiul hasan on 15/2/23.
//

import Foundation

//MARK: NewsModel
struct News: Decodable {
    let title: String
    let url: String?
    let by: String
}

//MARK: PostModel
struct Post : Decodable {
    let userID : Int
    let postID : Int
    let title : String
    let body : String
    
    enum CodingKeys : String, CodingKey {
        case userID = "userId"
        case postID = "id"
        case title
        case body
    }
}

//MARK: CoinModels
struct CoinList : Decodable {
    let data : [String : Coin]
}

struct Coin : Decodable {
    let id : Int
    let name : String
    let symbol : String
    let rank : Int
    let quotes : [String : Price]
}

struct Price : Decodable {
    let price : Double
}
