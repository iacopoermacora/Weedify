//
//  StatoView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct StatoView: View {
    
    @AppStorage("Status") private var Stato = "Germinazione"
    
    var body: some View {
        ScrollView {
            //germinazione, crescita, fioritura, essiccazione
            VStack (spacing:0){
                SelectionRow(value: "Germinazione", image: "tropicalstorm", imageType: "system", imageColor: .green, selected: $Stato)
                Divider()
                SelectionRow(value: "Crescita", image: "leaf.fill", imageType: "system", imageColor: .green, selected: $Stato)
                Divider()
                SelectionRow(value: "Fioritura", image: "camera.macro", imageType: "system", imageColor: .green, selected: $Stato)
                Divider()
                SelectionRow(value: "Essiccazione", image: "sun.max.fill", imageType: "system", imageColor: .green, selected: $Stato)
            }
            .background(Color(.secondarySystemGroupedBackground))
            .foregroundColor(.primary)
            .cornerRadius(20)
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct StatoView_Previews: PreviewProvider {
    static var previews: some View {
        StatoView()
    }
}
