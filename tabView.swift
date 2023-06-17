//
//  tabView.swift
//  Homify1
//
//  Created by aksh kalyani on 07/06/23.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView {
            
            //homeView()
            //Text("0")
            homeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
//            Text("a")
            servicesView()
                .tabItem {
                    Image(systemName: "handbag.fill")
                    Text("Services")
                }
            
            //upcomingServices()
//            Text("aa")
                .tabItem {
                    Image(systemName: "arrowshape.bounce.right.fill")
                    Text("Upcoming")
                }
            
            SettingsView()
//            Text("abc")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
        
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
