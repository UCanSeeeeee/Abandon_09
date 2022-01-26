//
//  ContentView.swift
//  imageApp
//
//  Created by 王杰 on 2022/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var zoomed: Bool = false
    
    var body: some View {
        ZStack(alignment: self.zoomed ? .top : .topTrailing) {
            Image("Image1")
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .navigationBarTitle(Text("star"), displayMode: .inline)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            Image("Image2")
                .resizable()
                .frame(width: 90, height: 50, alignment: .center)
                .padding(.all,10)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        
    }
}
