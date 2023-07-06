//
//  SelectionRow.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct SelectionRow: View {

    var value: String
    var image: String
    var imageType: String
    var imageColor: Color
    @Binding var selected: String
    
    
    var body: some View {
        Button(action: {
            selected = value
        }) {
            HStack {
                if imageType == "system" {
                    Image(systemName: image)
                        .foregroundColor(imageColor)
                } else {
                    Image(image)
                        .resizable()
                        .frame(width:70, height: 70)
                        .cornerRadius(20)
                }
                Text(value)
                Spacer()
                if selected == value {
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                }
            }
        }
        .padding()
    }
}

struct SelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectionRow(value: "test", image: "seed", imageType: "system", imageColor: .green, selected: .constant("test"))
    }
}
