//
//  WebView.swift
//  Hacker News
//
//  Created by Mohammad on 2023-08-17.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
