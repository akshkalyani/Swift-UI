//
//  upcomingView.swift
//  Homify1
//
//  Created by aksh kalyani on 12/06/23.
//

import SwiftUI

struct OptionButton: View {
    @State private var isSelected = false
    @State private var clickedData: String = ""

    var buttonText: String

    var body: some View {
        ZStack {
            Button(action: {
                isSelected.toggle()
                clickedData = buttonText
            }) {
                Text(buttonText)
                    .foregroundColor(isSelected ? .white : .blue)
                    .padding()
                    .frame(width: 100, height: 100)
                
                    .background(isSelected ? Color.blue : Color.white)
                    .cornerRadius(15)
            }
        RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 1)
                .frame(width: 100, height: 100)
        }
    }
}

struct ContentView1: View {
    var body: some View {
        HStack(spacing: 20) {
            OptionButton(buttonText: "Option 1")
            OptionButton(buttonText: "Option 2")
            OptionButton(buttonText: "Option 3")
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

//import SwiftUI
//
//struct upcomingServices: View {
//    //
//    //    let workerName = ["Cooking", "House Cleaning", "Baby Sitter", "Old Age Help", "Gardener", "Cooking", "House Cleaning"]
//    //    let service = ["Kamala Bai", "Vimala Devi", "BabbarSher"]
//    var body: some View {
//        Text("Error resolver")
//    }
//}
//        NavigationView{
//
//            VStack {
//
//                Text("Upcoming Services")
//                    .font(.system(size: 30, weight: .bold, design: .default))
//                    .foregroundColor(.black)
//                //                            .frame(maxWidth: .infinity, alignment: .leading)
//
//                    .frame(width: 393, height: 80)
//
//                ScrollView {
//                    ForEach(workerName,id:\.self) {
//                        name in
//                        HStack {
//
//                            Circle()
//                                .frame(width: 70, height: 70)
//
//
//                            VStack {
//                                HStack {
//                                    Text("\(name)")
//                                        .font(.system(size: 24, weight: .bold))
//                                    Spacer()
//                                }
//
//
//                                ForEach(service,id:\.self) {
//                                    s_name in
//                                    HStack {
//                                        Text("\(s_name)")
//                                            .font(.system(size: 15, weight: .bold))
//                                            .foregroundColor(.gray)
//                                        Spacer()
//                                    }
//                                }
//                            }
//                            .padding(.leading)
//                            Spacer()
//
//                            VStack{
//                                Text("April")
//                                    .bold()
//                                    .foregroundColor(.blue)
//                                Text("21")
//                                    .font(.system(size: 40, weight: .bold))
//                                    .foregroundColor(.blue)
//                            }
//
//
//                        }
//                        .background{
//                            RoundedRectangle(cornerRadius: 15)
//                                .strokeBorder(.blue,lineWidth: 1)
//                                .shadow(color: .blue, radius: 3)
//                                .frame(width: 373, height: 103)
//                        }
//
//                        .frame(width: 350, height: 103)
//                        //.background(.red)
//                        .padding(.leading)
//                        .padding(.bottom, 10)
//                        .padding(.trailing)
//                    }
//                }
//                Spacer()
//
//            }
//        }
//        navigationTitle("Upcoming Services")
//    }
//}
//
//struct reports_Previews: PreviewProvider {
//    static var previews: some View {
//        upcomingServices()
//    }
//}
