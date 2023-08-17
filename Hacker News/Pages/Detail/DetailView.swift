//
//  DetailView.swift
//  Hacker News
//
//  Created by Mohammad on 2023-08-17.
//

import SwiftUI

struct DetailView: View {

    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}
