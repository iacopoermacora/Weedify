//
//  LogView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 09/10/22.
//

import SwiftUI

struct LogView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var logs: FetchedResults<Log>
    
    var body: some View {
        ScrollView {
            if logs.isEmpty {
                HStack {
                    Spacer()
                    Text("Non sono presenti ancora log, aggiungili!")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                    .padding()
            } else {
                ForEach (logs) { log in
                    LogCardView(log: log)
                }
            }
        }
        .padding(.horizontal)
        .background(Color(.systemGroupedBackground))
        .navigationTitle("I miei progressi")
        .toolbar { // <2>
            ToolbarItem(placement: .confirmationAction) { // <3>
                NavigationLink(destination: NewLogView()) {
                    Image(systemName: "plus")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
