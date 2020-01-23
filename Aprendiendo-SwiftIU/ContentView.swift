//
//  ContentView.swift
//  Aprendiendo-SwiftIU
//
//  Created by Luis Carlos Mejia Garcia on 23/01/20.
//  Copyright © 2020 Mejia Garcia. All rights reserved.
//

import SwiftUI

struct Settings {
    static let facebookColor = Color(red: 56/255,
                                     green: 87/255,
                                     blue: 163/255)
}

struct ContentView: View {
    @State var emailValue: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 54)
                    .clipped()
                    .scaledToFill()
                
                Text("Inicia sesión para continuar")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                TextField("email", text: $emailValue)
                    .padding(.all, 20.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                    
            }
            .padding(.top, 50)
        }
        .background(Settings.facebookColor)
        .edgesIgnoringSafeArea(Edge.Set.all)
        
    }
}




// No tocar, es sólo para el preview.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
