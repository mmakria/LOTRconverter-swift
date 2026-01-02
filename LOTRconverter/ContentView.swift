//
//  ContentView.swift
//  LOTRconverter
//
//  Created by Mohamed Makria on 29/12/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    
    var body: some View {
        ZStack{
            //Background image
            // Remplace Image(.background) par ceci :
           
            Image(.background)
                .resizable()
                .ignoresSafeArea()
           
            
            VStack{
                //pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //Currency exchange text
                Text("Currency exchange")
                    .font(Font.largeTitle.bold())
                    .foregroundStyle(.white)
                
                //conversion section
                HStack{
                    //left conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        //text field
                        
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                        
                    }
                    //equal sign Sf symbols
                    Image(systemName: "equal")
                        .font(Font.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    
                    //right conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency text
                            Text("Glod Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //currency image
                            Image(.goldpiece)
                                .resizable( )
                                .scaledToFit( )
                                .frame(height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        //text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                //Info buton
                
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(Font.largeTitle)
                            .foregroundStyle(.white)
                    }.padding(.trailing)
                }
                
              
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
