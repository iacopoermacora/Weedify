//
//  NewLogView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 19/10/22.
//

import SwiftUI

struct NewLogView: View {
    
    @State private var logTitle: String = "Log di oggi"
    @State private var logNotes: String = "Log di oggi"
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        ScrollView {
            VStack {
                Image(systemName: "camera")
                    .font(.title)
                Text("Photo(s)")
            }
            .frame(width: 250, height: 250)
            .foregroundColor(.green)
            .background(
                Rectangle()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                    .foregroundColor(.primary)
                    .frame(width: 200, height: 200)
            )
            VStack (alignment:.leading) {
                Text("Titolo")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                TextField("Enter your name", text: $logTitle)
                    .textFieldStyle(.plain)
                    .padding(7)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(5)
                    .padding(.horizontal)
                    .padding(.bottom)
                Text("Note/Appunti")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                TextField("Enter your name", text: $logNotes, axis: .vertical)
                    .textFieldStyle(.plain)
                    .padding(7)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(5)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Nuovo log")
        .toolbar { // <2>
            ToolbarItem(placement: .confirmationAction) { // <3>
                Button {
                    let log = Log(context: moc)
                    log.id = UUID()
                    log.title = logTitle
                    log.notes = logNotes
                    log.date = Date.now
                    log.image = "plant2"
                    try? moc.save()
                    self.presentation.wrappedValue.dismiss()
                } label: {
                    Text("Save")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct NewLogView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogView()
    }
}
