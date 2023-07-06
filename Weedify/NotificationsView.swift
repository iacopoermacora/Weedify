//
//  NotificationsView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 15/10/22.
//

import SwiftUI

struct NotificationsView: View {
    
    @Binding var notifiche: Bool
    
    var body: some View {
        ScrollView {
            Toggle("Notifiche", isOn: $notifiche)
                .padding()
                .background(Color(.secondarySystemGroupedBackground))
                .cornerRadius(10)
                .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView(notifiche: .constant(false))
    }
}
