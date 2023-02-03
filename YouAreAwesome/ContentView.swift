//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by leonlee on 2023/1/30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        ZStack {
//            Color.yellow
//                .ignoresSafeArea()
//                .opacity(0.5)
           Rectangle()
//                .fill(Color("SkyBlue").gradient)
                .fill(
                    Gradient(colors: [.yellow,.orange])
                )
                .ignoresSafeArea()
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC"))
                    .cornerRadius(15)
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange,width: 1)
                    .padding()
                Spacer()
                
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome"
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
    //            .border(.purple,width: 5)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
