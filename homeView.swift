//
//  SwiftUIView.swift
//  Homify1
//
//  Created by aksh kalyani on 06/06/23.
//

import SwiftUI

struct homeView: View {
    @State private var imagesArray = ["cleaning", "chef", "dogWalker"]
    
    var body: some View {
       
        
    VStack{
            
            HStack{
                Image("homifylogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text("Homify")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                
            }
        Spacer()
        
        VStack(){
            ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 4)
                        .frame(width: 380, height: 350)
                    //                    .foregroundColor(Color(uiColor: .lightGray))
 
                VStack {
                    Text("Ongoing Services")
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack{
                             ForEach(0..<2){
                                        index in
                                        ZStack{
                                            Rectangle()
                                                .stroke(lineWidth: 0.5)
                                                .frame(width: 379, height:100)
                                                .padding()
                                            
                                            HStack{
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .foregroundColor(Color("g"))
                                                        .frame(width: 90, height: 80)
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .stroke(lineWidth: 0.5)
                                                        .frame(width: 90, height: 80)
                                                    Image("chef")
                                                        .resizable()
                                                        .frame(width: 60, height: 60)
                                                    }
                                               
                                                VStack{
                                                
                                                    Text("Househelp")
                                                        .multilineTextAlignment(.leading)
                                                        .bold()
                                                    Text("23 Days Remaining")
                                                        .foregroundColor(.red)
                                                    Text("Next Service: Tomorrow")
                                                }
                                            }
                                            
                                        }
                                    }
                        }
                    }
                }.frame(width: 380, height: 350)
                    
                }
            
                Spacer()
                    
            Text("Recommended for you")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
               
            ScrollView(.horizontal,showsIndicators: false) {
                HStack{
                    ForEach(0..<2) { index in
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                //.stroke(lineWidth: 1)
                                //.stroke(Color.black, lineWidth:1)
                                .foregroundColor(Color("g"))
                                .frame(width: 100, height: 100)
//                            RoundedRectangle(cornerRadius: 15)
//                                .stroke(lineWidth: 0.5)
//                                .frame(width: 100, height: 100)
                                
                           
                            VStack {
                                Image("chef")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                Text("Cook")
                            }
                        }
                            
                    }
                
                }.padding(.leading)
                    .padding(.trailing)
            }
               
            Spacer()
                
            Text("Top rated")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading)
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(0..<4){
                        
                        index in
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                //.stroke(lineWidth: 1)
                                //.stroke(Color.black, lineWidth:1)
                                .foregroundColor(Color("g"))
                                .frame(width: 100, height: 100)
//                            RoundedRectangle(cornerRadius: 15)
//                                .stroke(lineWidth: 0.5)
//                                .frame(width: 100, height: 100)
                            
                            VStack {
                                Image("cleaning")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                Text("Cleaning")

                            }
                            
                        }

                    }
                        
                }.padding(.leading)
                    .padding(.trailing)
            }
            
            Spacer()

            }
        
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
