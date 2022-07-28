//
//  ContentView.swift
//  EuskalWeather
//
//  Created by Adrián Pisabarro García on 28/7/22.
//
//  REF coloors: https://coolors.co/palette/247ba0-70c1b3-b2dbbf-f3ffbd-ff1654

import SwiftUI

struct ContentView: View {
    
    @State var data: String = "Hola mundo!!"


    var body: some View {

        VStack (spacing: 0){
            VStack(spacing: 0){
                Text("EuskalWeather 🌦")
                    .padding()
                    .font(
                        Font.system(
                            size: 30,
                            weight: .bold,
                            design: .default
                        )
                    )
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 110, alignment: .bottomLeading
                    )
                    .foregroundColor(Color(red: 255/255, green: 22/255, blue: 84/255))
                    .background(Color(red: 178/255, green: 219/255, blue: 191/255))
            }
            .offset(y: 0)
            .frame(
                minWidth: 0,
                alignment: .topLeading
            )

            ScrollView{
                Section {
                    ForEach(1..<10) {_ in
                        RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                minHeight: 100, alignment: .leading
                            )
                            .padding()
                            .foregroundColor(Color(red: 36/255, green: 123/255, blue: 160/255))
                            .overlay(
                                Text(data).foregroundColor(Color.white)
                            )
                    }
                }
                .padding()
                .background(Color(red: 243/255, green: 255/255, blue: 189/255))
            }
            .frame(height: .infinity)
            .background(Color(red: 243/255, green: 255/255, blue: 189/255))
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .edgesIgnoringSafeArea(.all)


    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func getXML() -> String{
    return "holii"
}

func getData(){
    var xml = ""
    xml = getXML()
    
    print(xml)
    
    
}
