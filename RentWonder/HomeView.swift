//
//  HomeView.swift
//  RentWonder
//
//  Created by Mac on 12.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchtext: String = ""
    
    var body: some View {
        
        ZStack {
            Color.black.opacity(0.96)
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    HStack {
                        VStack {
                            Text("Günaydın!")
                            Text("Kemal Aydın").bold()
                        }
                        Spacer()
                        Image("heart").renderingMode(.template)
                        Image("bell").renderingMode(.template)
                    }
                    .foregroundColor(.white)
                    .padding()
                    
                    HStack {
                        Image(systemName: "magnifyingglass").foregroundColor(.white)
                        TextField("Username", text: $searchtext).foregroundColor(.white)
                    }.padding()
                    
                   
                    .frame(maxWidth:.infinity, minHeight: 40)
                    .background(Color.white).opacity(0.08)
                    .cornerRadius(24).padding()
                    
                    HStack(alignment:.top) {
                        Text("Sana Özel Fırsatlar").font(.body).foregroundColor(.white).bold()
                        
                        Spacer()
                        
                        Text("Tümü").font(.body).foregroundColor(.white).bold()
                    }.padding(.leading, 24)
                        .padding(.trailing, 24)
                    
                    ZStack {
                        
                        HStack {
                        
                        VStack {
                            Text("%20 İndirim").foregroundColor(.white).bold().font(.title2)
                            Text("Bayram Fırsatı").foregroundColor(.white).bold().font(.title2)
                        }
                            Image("s90volvo")
                                .resizable()
                                .frame(width: 270, height: 200)
                            
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 180).background(Color.cyan)
                    .cornerRadius(12).padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("volvo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                            
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("bmw")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                            
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("mercedes")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                            
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("audi")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                            
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("rangerover")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                            
                            ZStack {
                            Circle()
                                .frame(width: 80, height: 80).foregroundColor(.gray.opacity(0.2))
                                Image("toyota")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                
                            }
                        }
                    }.padding()
                  
                    HStack {
                        Text("Öne Çıkanlar").foregroundColor(.white).font(.body).bold()
                        
                      Spacer()
                       
                        Text("Tümü").foregroundColor(.white).font(.body).bold()
                        
                    }.padding(.leading, 24)
                        .padding(.trailing,24)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Text("Tümü").foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .background(Color.cyan)
                                .cornerRadius(50)
                            
                            Text("Sedan").foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(50)
                            
                            Text("SUV").foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(50)
                            
                            Text("Hatcback").foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(50)
                                
                            Text("Station").foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .lineLimit(0)
                                .multilineTextAlignment(.center)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(50)
                                
                        }.padding()
                        
                    }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack {
                        ZStack {
                            Image("audi-1").resizable()
                            
                            VStack {
                                Text("Audi A5").foregroundColor(.white).bold()
                                Text("1300TL/Gün").foregroundColor(.white)
                            }.padding(.top,120)
                            
                        }
                        .frame(width: 180, height: 180,alignment: .topLeading).background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                            
                            ZStack {
                                
                                Image("evoque").resizable().frame(width:180, height: 130)
                                    
                                
                                VStack {
                                    Text("Range Rover Evoque").foregroundColor(.white).bold()
                                    Text("1700TL/Gün").foregroundColor(.white)
                                }.padding(.top,140)
                                
                            }
                            .frame(width: 180, height: 180,alignment: .topLeading).background(Color.gray.opacity(0.2))
                            .cornerRadius(12)
                            
                        }
                    }
                    

                }
                    
                    
            }.padding()
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
