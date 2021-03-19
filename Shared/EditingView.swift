//
//  EditingView.swift
//  ClosePresentationMode
//
//  Created by 张洪Heo on 2021/3/19.
//

import SwiftUI

struct EditingView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        NavigationView{
            VStack {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Text("关闭窗口")
                }
            }
            .navigationTitle("编辑")
            .navigationBarItems(trailing: Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Text("完成")
            })
        }
    }
}

struct EditingView_Previews: PreviewProvider {
    static var previews: some View {
        EditingView()
    }
}
