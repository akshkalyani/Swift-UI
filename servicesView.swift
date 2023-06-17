//
//  servicesView.swift
//  Homify1
//
//  Created by aksh kalyani on 07/06/23.
//

import SwiftUI

struct servicesView: View {
    @State private var query = ""
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
              
                ForEach(0..<14){
                    index in
                
                VStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 0.5)
                            .frame(width: 380, height: 100)
                    HStack {
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
                                .aspectRatio(contentMode: .fill)
                        }
                        .padding(.leading)
                        Spacer()
                        
                        VStack{
                            Text("Mopping Services")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("Cleaning services offered by professionally trained")
                                .foregroundColor(Color.gray)
                            
                        }
                        Spacer()
                        //                            .padding(.leading)
                        
                    }
                }

                
                    
                    
                 
                        
//                        HStack{
//                            Image("broom")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//                                .aspectRatio(contentMode: .fill)
//                                .padding(.leading)
//
//                            Text("Available Services")
//                                .font(.title)
//                                .fontWeight(.regular)
//                                .padding(.leading)
//
//
//                            Spacer()
//                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        
                        
                    }
                    
                    
                    //earchable(text: "Search")
                    
                }
                .navigationTitle("Available Services")
                .searchable(text: $query)
                
                
            }
        }
    }
}

struct servicesView_Previews: PreviewProvider {
    static var previews: some View {
        servicesView()
    }
}
