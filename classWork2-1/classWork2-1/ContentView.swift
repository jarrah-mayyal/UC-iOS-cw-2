//
//  ContentView.swift
//  classWork2-1
//
//  Created by JARRAH MAYYAL on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var image = "Q"
    var body: some View {
        VStack{
            Text ("ماهو المسار المفضل لديك")
            
                .font(.largeTitle)
            Image (image)
                .resizable()
                .frame(width: 120, height: 120)
                .scaleEffect()
            
            
            Text("ios")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 100)
                .background(Color(hue: 0.565, saturation: 1.0, brightness: 1.0))
                .clipShape(Capsule())
                .padding(8)
                .scaleEffect(2, anchor: .top)
                .onTapGesture {
                    image = "ios"
                }
                
                
            
            Text("Gamedev")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 100)
                .background(.red)
                .clipShape(Capsule())
                .padding(8)
                .scaleEffect(2, anchor: .top)
                .onTapGesture {
               image = "game"
            }

            Text("Web")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 100)
                .background(.blue)
                .clipShape(Capsule())
                .padding(8)
                .scaleEffect(2, anchor: .top)
                .onTapGesture {
                    image = "web"
                }

            Text("Android")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 100)
                .background(.green)
            
                .clipShape(Capsule())
                .padding(8)
                .scaleEffect(2, anchor: .top)
                .onTapGesture {

                  image = "android"
              }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
