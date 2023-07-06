//
//  IconaView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct IconaView: View {
    
    @AppStorage("SelectedIcon") private var selected = "AppIcon"
    
    var body: some View {
        ScrollView {
            VStack (spacing:0){
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                    selected = "AppIcon"
                }){
                    HStack {
                        Image("AppIconImage")
                            .resizable()
                            .frame(width:50, height: 50)
                            .cornerRadius(20)
                        Text("Default")
                        Spacer()
                        if selected == "AppIcon" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                        }
                    }
                    .padding()
                }
                Divider()
                Button(action: {
                    UIApplication.shared.setAlternateIconName("AppIcon2")
                    selected = "AppIcon2"
                }){
                    HStack {
                        Image("AppIcon2Image")
                            .resizable()
                            .frame(width:50, height: 50)
                            .cornerRadius(20)
                        Text("Anonima")
                        Spacer()
                        if selected == "AppIcon2" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                        }
                    }
                    .padding()
                }
            }
            .background(Color(.secondarySystemGroupedBackground))
            .foregroundColor(.primary)
            .cornerRadius(20)
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct IconaView_Previews: PreviewProvider {
    static var previews: some View {
        IconaView()
    }
}
