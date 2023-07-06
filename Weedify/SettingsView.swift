//
//  SettingsView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 09/10/22.
//

import SwiftUI

struct SettingsView: View {

    @AppStorage("notificheAcqua") private var notificheAcqua: Bool = true
    @AppStorage("notificheFert") private var notificheFert: Bool = true
    @AppStorage("notificheLuce") private var notificheLuce: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    List {
                        Section {
                            NavigationLink(destination: IconaView()
                                .navigationTitle("Icona App")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "app", testo: "Icona App")
                                }
                        }
                        Section {
                            NavigationLink(destination: PlantNameView()
                                .navigationTitle("Nome Pianta")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "leaf", testo: "Nome della pianta")
                                }
                            NavigationLink(destination: StartDateView()
                                .navigationTitle("Data inizio coltivazione")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "calendar", testo: "Data inizio coltivazione")
                                }
                            NavigationLink(destination: StatoView()
                                .navigationTitle("I miei progressi")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "list.bullet.clipboard", testo: "Stadio attuale")
                                }
                        }
                        Section {
                            NavigationLink(destination: NotificationsView(notifiche: $notificheAcqua)
                                .navigationTitle("Notifiche Acqua")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "drop", testo: "Notifiche acqua")
                                }
                            NavigationLink(destination: NotificationsView(notifiche: $notificheFert)
                                .navigationTitle("Notifiche Fertilizzanti")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "drop.triangle", testo: "Notifiche Fertilizzanti")
                                }
                            NavigationLink(destination: NotificationsView(notifiche: $notificheLuce)
                                .navigationTitle("Notifiche Luce")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "lightbulb", testo: "Notifiche Luce")
                                }
                        }
                        Section {
                            NavigationLink(destination: AboutView()
                                .navigationTitle("About")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "laptopcomputer", testo: "About")
                                }
                            NavigationLink(destination: TermsView()
                                .navigationTitle("Terms and conditions")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "folder", testo: "Terms and conditions")
                                }
                        }
                        Section {
                            NavigationLink(destination: LogView()
                                .navigationTitle("I miei progressi")
                                .navigationBarTitleDisplayMode(.inline)) {
                                    SettingsRowView(icona: "archivebox", testo: "Dona")
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(height:650)
            }
            .navigationTitle("Settings")
            .background(Color(.systemGroupedBackground))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
