//
//  ContentView.swift
//  Shared
//
//  Created by 张洪Heo on 2021/3/19.
//

import SwiftUI

struct ContentView: View {
    @State var showEditing = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showEditing = true
            }) {
                Text("hello")
            }
            
        }
        .sheet(isPresented: $showEditing, content: {
            EditingView()
    })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
