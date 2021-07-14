//
//  HomeView.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/08.
//

import SwiftUI
import UIKit

struct HomeView: View {
    var body: some View {
        TabView(){
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Favorites")
                }
           
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12")
    }
}
