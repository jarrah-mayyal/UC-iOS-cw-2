//
//  ContentView.swift
//  classWork2-2 currency
//
//  Created by JARRAH MAYYAL on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var currency = ""

    var body: some View {
        VStack{
            Text(" محول العملات العجيب!")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField(" العمله بالدينار الكويتي" ,text: $currency)
                .multilineTextAlignment(.center)
            Spacer()
        
            HStack{
               
                Image("us")
                    .resizable().scaledToFit().frame(width: 50, height: 50)
                Text("$\((Double(currency) ?? 0)*3.28)")

            }
                HStack{
                    Image("uk")
                        .resizable().scaledToFit().frame(width: 50, height: 50)
                    Text("£\((Double(currency) ?? 0)*2.46)")

                }
                HStack{
                    Image("eu")
                        .resizable().scaledToFit().frame(width: 50, height: 50)
                    Text("€\((Double(currency) ?? 0)*2.70)")
                
                }
            
                Image("cu")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 100.0, bottom: 300.0, trailing: 0.0))
               .scaledToFit()
                .scaleEffect()
        }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
