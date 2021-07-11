//
//  HomeView.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/08.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: NewsViewModelImplementation = NewsViewModelImplementation(service: NewsServiceImplementation())
    
    var body: some View {
        Group {
            switch viewModel.state {
            case .loading:
                ProgressView()
            case .failed(let error):
                ErrorView(error: error, retryHandler: viewModel.getArticles)
            case .success(let articles):
                NavigationView {
                    List(articles) { item in
                        ArticleView(article: item)
                    }
                    .navigationTitle(Text("News"))
                }
            }
        }.onAppear(perform: viewModel.getArticles)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12")
    }
}
