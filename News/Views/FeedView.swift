//
//  FeedView.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/14.
//

import SwiftUI
import Combine

struct FeedView: View {
    
    @Environment(\.openURL) var openURL
    @StateObject var viewModel: NewsViewModelImplementation = NewsViewModelImplementation(service: NewsServiceImplementation())
    
    var body: some View {
        NavigationView {
            Group {
                switch viewModel.state {
                case .failed(let error):
                    ErrorView(error: error, retryHandler: viewModel.getArticles)
                default:
                    List(viewModel.isLoading ? Article.dummyData : viewModel.articles) { item in
                        ArticleView(isLoading: viewModel.isLoading, article: item)
                            .onTapGesture {
                                openURLwithWebBrowser(url: item.url)
                            }
                    }
                    .navigationTitle(Text("News"))
                }
            }.onAppear(perform: viewModel.getArticles)
        }
    }
    
    func openURLwithWebBrowser(url: String?) {
        guard let url = url, let url = URL(string: url) else { return }
        openURL(url)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
