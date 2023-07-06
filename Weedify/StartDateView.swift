//
//  StartDateView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct StartDateView: View {

    @AppStorage("StartDate") private var date: Date = Date()
    
    var body: some View {
        ScrollView {
            DatePicker(
                    "Data",
                    selection: $date,
                    displayedComponents: [.date]
                )
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

struct StartDateView_Previews: PreviewProvider {
    static var previews: some View {
        StartDateView()
    }
}
