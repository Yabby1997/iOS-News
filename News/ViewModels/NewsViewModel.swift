//
//  NewsViewModel.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/09.
//

import Foundation
import Combine

protocol NewsViewModel {
    func getArticles()
}

class NewsViewModelImplementation: ObservableObject, NewsViewModel {
    
    private let service: NewsService
    private(set) var articles = [Article]()
    private var cancellables = Set<AnyCancellable>()
    
    @Published private(set) var state: ResultState = .loading
    
    init(service: NewsService) {
        self.service = service
    }
    
    func getArticles() {
        let cancellable = self.service.request(from: .getNews)
            .sink { response in
                switch(response) {
                case .finished:
                    self.state = .success(content: self.articles)
                case .failure(let error):
                    self.state = .failed(error: error)
                }
            } receiveValue: { response in
                self.articles = response.articles
            }
        self.cancellables.insert(cancellable)
    }
}
