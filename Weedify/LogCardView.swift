//
//  LogCardView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 09/10/22.
//

import SwiftUI

struct LogCardView: View {
    
    @State private var isExpanded: Bool = false
    @ObservedObject var log: FetchedResults<Log>.Element
    
    var body: some View {
        HStack {
            VStack {
                Circle()
                    .fill(.primary)
                    .frame(width: 15, height: 15)
                Rectangle()
                    .fill(Color(.systemGray3))
                    .frame(width: 3)
            }
            .frame(width:20)
            VStack{
                VStack (alignment:.leading, spacing: 10){
                    VStack (alignment:.leading) {
                        HStack {
                            Text(log.title ?? "titolo generico")
                                .fontWeight(.bold)
                            Spacer()
                            NavigationLink(destination: EditLogView(log: log)) {
                                Image(systemName: "pencil")
                                    .foregroundColor(.green)
                            }
                        }
                        Text(log.date?.addingTimeInterval(600) ?? Date.now, style: .date)
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, 5)
                    HStack (alignment:.top) {
                        Image(log.image ?? "plant2")
                            .resizable()
                            .frame(width:80, height:80)
                        Text(log.notes ?? "Annotazioni varie")
                            .foregroundColor(.secondary)
                            .lineLimit(isExpanded ? nil : 4)
                    }
                    Button {
                        isExpanded.toggle()
                    } label: {
                        Text(isExpanded ? "Mostra di meno" : "Mostra di più")
                            .foregroundColor(.green)
                    }
                }
                .padding()
                .background(Color(.secondarySystemGroupedBackground))
                .cornerRadius(20)
                .foregroundColor(.primary)
            }
            .padding(.bottom, 20)
        }
        .background(Color(.systemGroupedBackground))
    }
}

/*struct LogCardView_Previews: PreviewProvider {
    static var previews: some View {
        LogCardView(data: Date.now, titolo: "Primo giorno di crescita delle foglie", image: "plant2", testo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    }
}*/
