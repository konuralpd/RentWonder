//
//  ContentView.swift
//  RentWonder
//
//  Created by Mac on 12.07.2022.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            
        GeometryReader { geometry in
        ZStack {
            Image("welcomebg")
                .resizable()
                .aspectRatio(geometry.size, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack(alignment:.leading) {
                
                Text("RentWonder'a")
                    .font(.largeTitle).bold().foregroundColor(.white)
                   
                Text("Hoşgeldiniz!")
                    .font(.largeTitle).bold().foregroundColor(.white)
                   
                    Text("İstediğin arabayı en uygun fiyatlarla kiralayabilirsin!").bold()
                        .foregroundColor(.white)
                        .padding(.top)
                        
                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true).navigationBarHidden(true)) {
                            Text("Başla")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 40)
                                
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                        )
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 0, y: 0.5)
                        .padding()
                        
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }.padding(.bottom, 100)
                    .padding()
                        }


        }
            
        }
            
    }
    }


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
