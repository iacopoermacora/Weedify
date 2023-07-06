//
//  SettingsRowView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 10/10/22.
//

import SwiftUI

struct SettingsRowView: View {
    var icona: String
    var testo: String
    var body: some View {
        HStack {
            Image(systemName: icona)
                .foregroundColor(.green)
            Text(testo)
            Spacer()
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(icona: "paintbrush", testo: "Colore")
    }
}
