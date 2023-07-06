//
//  ToDoView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 09/10/22.
//

import SwiftUI

struct ToDoView: View {
    
    var icona : String
    var tempo : String
    
    var body: some View {
        HStack (){
            Spacer()
            Text(icona)
                .padding(.trailing)
            Text(tempo)
                .fontWeight(.bold)
            Spacer()
        }
        .padding(5)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(20)
        .foregroundColor(.primary)
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView(icona: "💧", tempo: "4h")
    }
}
