//
//  EditLogView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 21/10/22.
//

import SwiftUI

struct EditLogView: View {
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentation
    
    @ObservedObject var log: FetchedResults<Log>.Element
    
    
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
                Text(log.title ?? "Titolo")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                TextField("Enter your name", text: Binding(get: {log.title ?? ""}, set: {log.title = $0}))
                    .textFieldStyle(.plain)
                    .padding(7)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(5)
                    .padding(.horizontal)
                    .padding(.bottom)
                Text(log.title ?? "Note/Appunti")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                TextField("Enter your name", text: Binding(get: {log.notes ?? ""}, set: {log.notes = $0}))
                    .textFieldStyle(.plain)
                    .padding(7)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(5)
                    .padding(.horizontal)
                    .padding(.bottom)
                Button {
                    moc.delete(log)
                    try? moc.save()
                    self.presentation.wrappedValue.dismiss()
                } label : {
                    Text("Delete")
                }
            }
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Nuovo log")
        .toolbar { // <2>
            ToolbarItem(placement: .confirmationAction) { // <3>
                Button {
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

/*struct EditLogView_Previews: PreviewProvider {
    static var previews: some View {
        EditLogView()
    }
}*/
