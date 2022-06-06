//
//  MyFizzBuzzView.swift
//  Shared
//
//  Created by Allan Garcia on 05/06/22.
//

import SwiftUI

struct MyFizzBuzzView: View {
    
    @ObservedObject var store: MyFizzBuzzStore
    
    @State var navigateToFizzBuzzResults = false
        
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button {
                        DispatchQueue.main.async {
                            store.executeFizzBuzz(upto: 1000)
                            DispatchQueue.main.async {
                                navigateToFizzBuzzResults = true
                            }
                        }
                    } label: {
                        Text("Execute FizzBuzz upto a 1000")
                    }
                    NavigationLink(destination: FizzBuzzResults(results: store.fizzBuzzArrayString), isActive: $navigateToFizzBuzzResults, label: { Text("Results")})
                } footer: {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Made By Allan Garcia for educational purposes only!")
                        Text("If you have a better version please comment on the code or PR on the repository directly. I'll credit all the suggestions and reference all the constructive critique.")
                    }.font(.caption2)
                }
            }
            .navigationTitle(Text("FizzBuzz"))
            .navigationViewStyle(.stack)
        }
    }
}


struct FizzBuzzResults: View {
    
    let results: [String]
    
    var body: some View {
        List {
            ForEach(results) { result in
                HStack {
                    Spacer()
                    Text(result)
                        .padding(5)
                    Spacer()
                }
            }
        }
        .navigationTitle(Text("Results"))
        .navigationBarTitleDisplayMode(.inline)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyFizzBuzzView(store: MyFizzBuzzStore())
    }
}
