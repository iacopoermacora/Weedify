//
//  PlantNameView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct PlantNameView: View {
    
    @AppStorage("plantName") private var plantName = "Maria"
    
    var body: some View {
        
        ScrollView {
            TextField("Enter your name", text: $plantName)
                .textFieldStyle(.plain)
                .padding(7)
                .background(Color(.secondarySystemGroupedBackground))
                .cornerRadius(5)
                .padding(.top, 10)
                .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct PlantNameView_Previews: PreviewProvider {
    static var previews: some View {
        PlantNameView()
    }
}
