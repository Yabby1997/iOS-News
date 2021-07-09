//
//  NewsResponse.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/08.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String
    let url: String
    let source: String
    let title: String
    let description: String
    let image: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title, description, image, date
    }
}
