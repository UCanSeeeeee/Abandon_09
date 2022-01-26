//
//  ContentView.swift
//  myApp
//
//  Created by 王杰 on 2022/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 20) { item in
                NavigationLink(destination: Text("do not know")) {
                    Image(systemName: "heart")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 50, height: 50, alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Hello, world!")
                            .foregroundColor(.blue)
                        Text("Come on bby")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    } }

            }
            .navigationTitle("Navigation bar")

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
