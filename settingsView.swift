//
//  settingsView.swift
//  Homify1
//
//  Created by aksh kalyani on 12/06/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            
            
            List {
                NavigationLink(destination: ProfileView()){
                    HStack{
                        
                        ZStack {
                                Circle()
                                    .fill(Color.gray)
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                   
                        }
                            .frame(width: 60, height: 60)
            
                        VStack {
                            HStack {
                                Text("Sanskriti Shankar")
                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                                Spacer()
                            }
                            HStack {
                                Text("9823413234")
                                    .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                                Spacer()
                            }
                        }
                        .padding(.leading)
                    }
                }
                
                Section(header: Text("ACCOUNT")) {
                    
                    NavigationLink(destination: ProfileView()) {
                        Text("Profile")
                        
                    }
                    
                    NavigationLink(destination: SecurityView()) {
                        Text("Security")
                    }
                    
                    NavigationLink(destination: NotificationView()) {
                        Text("Notifications")
                    }
                    
                }
                
                
                Section(header: Text("PREFERENCES")) {
                    NavigationLink(destination: GeneralView()) {
                        Text("General")
                    }
                    NavigationLink(destination: PrivacyView()) {
                        Text("Privacy")
                    }
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                    }
                }
                
                Section(header: Text("SUPPORT")) {
                    NavigationLink(destination: ContactView()) {
                        Text("Contact Us")
                    }
                    NavigationLink(destination: FAQView()) {
                        Text("FAQ")
                    }
                }
                
                Section {
                    Button(action: {
                        // action to log out
                    }) {
                        Text("Log Out")
                            .foregroundColor(.red)
                    }
                }
            }
            .listStyle(DefaultListStyle())
            //.listStyle(GroupedListStyle())
            .accentColor(.blue)
            .navigationBarTitle("Settings")
        }
    }
}
            

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
            .navigationBarTitle("Profile")
    }
}

struct SecurityView: View {
    var body: some View {
        Text("Security View")
            .navigationBarTitle("Security")
    }
}

struct NotificationView: View {
    var body: some View {
        Text("Notification View")
            .navigationBarTitle("Notifications")
    }
}

struct GeneralView: View {
    var body: some View {
        Text("General View")
            .navigationBarTitle("General")
    }
}

struct PrivacyView: View {
    var body: some View {
        Text("Privacy View")
            .navigationBarTitle("Privacy")
    }
}

struct AboutView: View {
    var body: some View {
        Text("About View")
            .navigationBarTitle("About")
    }
}

struct ContactView: View {
    var body: some View {
        Text("Contact View")
            .navigationBarTitle("Contact Us")
    }
}

struct FAQView: View {
    var body: some View {
        Text("FAQ View")
            .navigationBarTitle("FAQ")
    }
}
struct settings_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
