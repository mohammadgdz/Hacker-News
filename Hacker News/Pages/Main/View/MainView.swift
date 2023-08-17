//
//  ContentView.swift
//  Hacker News
//
//  Created by Mohammad on 2023-08-17.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var mainViewModel = MainViewModel()
    
    var body: some View {
        
        NavigationStack{
            
                List(mainViewModel.posts){ post in
                    HStack {
                        VStack {
                            Image(systemName: "star.circle")
                                .foregroundColor(.yellow)
                            Text(String(post.points))
                        }
                        
                        .padding(.trailing, 5)
                        Text(post.title)
                    }
                }
                .navigationTitle("Hacker News")
            }
        .onAppear {
            mainViewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
