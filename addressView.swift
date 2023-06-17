//
//  addressView.swift
//  Homify1
//
//  Created by aksh kalyani on 07/06/23.
//

import SwiftUI

struct AddressView: View {
    @State private var selectedSegmentIndex = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedSegmentIndex, label: Text("")) {
                Text("Address").tag(0)
                Text("Worker").tag(1)
                Text("Confirmation").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Spacer()
            
            if selectedSegmentIndex == 0 {
                addressDetailsView()
            } else if selectedSegmentIndex == 1 {
                workerDetailsView()
            } else {
                bookingConfirmationView()
            }
            
            Spacer()
        }
    }
}


struct ContentView: View {
    var body: some View {
        AddressView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
