//
//  ContentView.swift
//  MyMap
//
//  Created by 大石和仁 on 2024/11/04.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    @State var dispalySearchKey: String = ""

    var body: some View {
        VStack {
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    dispalySearchKey = inputText
                }
                .padding()

            MapView(searchKey: dispalySearchKey)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
