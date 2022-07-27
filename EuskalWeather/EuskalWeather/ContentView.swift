//
//  ContentView.swift
//  EuskalWeather
//
//  Created by Adrián Pisabarro García on 28/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "Hello 🚀"

    
    
    var body: some View {
        
        VStack{
            Text(message )
                .padding()
            Text(sayHello(name: "Adrian"))
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func sayHello(name: String) -> String{
    return "Hi, " + name
}
