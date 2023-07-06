//
//  AboutView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct AboutView: View {
    
    @AppStorage("SelectedIcon") private var selectedIcon = "AppIcon"
    
    var body: some View {
        VStack (alignment:.center) {
            Image(selectedIcon + "Image")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(20)
            Text("Weedify")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Version (da aggiungere)")
            Text("Designed and Developed by Iacopo (Paco) Ermacora in Milan, Italy")
                .multilineTextAlignment(.center)
                .padding(30)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
