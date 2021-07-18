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

struct Article: Codable, Identifiable, Equatable {
    let id = UUID()
    let author: String?
    let url: String?
    let source: String?
    let title: String?
    let description: String?
    let image: String?
    let date: Date?
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title, description, image, date
    }
}

extension Article {
    static var dummyData: [Article] {
        [
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date()),
            .init(author: "Mark Serrels",
                  url: "https://www.cnet.com/news/ufc-264-results-conor-mcgregor-suffers-freak-leg-injury-in-loss-to-dustin-poirier/",
                  source: "CNET",
                  title: "UFC 264 results: Conor McGregor suffers freak leg injury in loss to Dustin Poirier - CNET",
                  description: "\"This isn't over,\" said McGregor after suffering a horrific leg injury.",
                  image: "https://www.cnet.com/a/img/I01r_nvTMU9NfK5GImMRlnTxbPs=/1200x630/2021/07/10/fcd2e24a-9022-44ba-8f1e-bbbc96f9376b/gettyimages-1327901739.jpg",
                  date: Date())
        ]
    }
}
