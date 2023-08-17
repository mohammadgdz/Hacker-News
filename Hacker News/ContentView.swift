//
//  ContentView.swift
//  Hacker News
//
//  Created by Mohammad on 2023-08-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(posts){ post in
                Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
    }
}


struct Post: Identifiable {
    let id : String
    let title : String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola"),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
