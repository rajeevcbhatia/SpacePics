//
//  ResponseModel.swift
//  SpacePics
//
//  Created by Rajeev Bhatia on 19/05/19.
//  Copyright © 2019 rajeev. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Response: Codable {
    let collection: Collection
}

// MARK: - Collection
struct Collection: Codable {
    let items: [Item]
}

// MARK: - Item
struct Item: Codable {
    let links: [ItemLink]
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let title: String
    let datumDescription: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case datumDescription
    }
}

// MARK: - ItemLink
struct ItemLink: Codable {
    let href: String
    let rel: Rel
}

enum Rel: String, Codable {
    case preview = "preview"
}

// MARK: - CollectionLink
struct CollectionLink: Codable {
    let href: String
    let rel: String
}
