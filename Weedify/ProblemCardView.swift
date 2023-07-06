//
//  ProblemCardView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 09/10/22.
//

import SwiftUI

struct ProblemCardView: View {
    
    var icona: String
    var testo: String
    
    var body: some View {
        HStack (){
            Text(icona)
            Text(testo)
                .fontWeight(.bold)
        }
        .padding(25)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(20)
        .foregroundColor(.primary)
    }
}

struct ProblemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemCardView(icona: "💡", testo: "3h")
    }
}
