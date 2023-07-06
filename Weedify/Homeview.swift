//
//  HomeView.swift
//  Weedify
//
//  Created by Iacopo Ermacora on 20/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("plantName") private var plantName = "Maria"
    @AppStorage("Status") private var Status = "Germinazione"
    
    let todayDate = Date.now
    @AppStorage("StartDate") private var date: Date = Date()
    private var dateDiff: DateComponents!
    
    init() {
        self.dateDiff = Calendar.current.dateComponents([.day], from: date, to: todayDate)
    }
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack (alignment:.leading) {
                    HStack {
                        Image("plant2")
                            .resizable()
                            .frame(width:150, height: 200)
                            .padding(.leading)
                        VStack (alignment:.leading) {
                            Text(plantName)
                                .font(.title)
                                .fontWeight(.bold)
                            HStack {
                                Text(Status)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text(" - ")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("\(dateDiff.day ?? 0)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                            }
                            ToDoView(icona: "💧", tempo: "4h")
                            ToDoView(icona: "🧪", tempo: "7h")
                            ToDoView(icona: "💡", tempo: "3h")
                            NavigationLink(destination: LogView()) {
                                    Text("I miei progressi")
                                        .foregroundColor(.green)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.green)
                                }
                        }
                        .padding()
                    }
                    Text("Risoluzione Problemi")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            NavigationLink(destination: ProblemView()
                                .navigationTitle("Foglie Secche")) {
                                    ProblemCardView(icona: "💡", testo: "Foglie Secche")
                                }
                            NavigationLink(destination: ProblemView()
                                .navigationTitle("Colore smorto")) {
                                    ProblemCardView(icona: "💡", testo: "Colore smorto")
                                }
                            NavigationLink(destination: ProblemView()
                                .navigationTitle("Che ne so io")) {
                                    ProblemCardView(icona: "💡", testo: "Che ne so io")
                                }
                            NavigationLink(destination: ProblemView().navigationTitle("Altro Problema")) {
                                ProblemCardView(icona: "💡", testo: "Altro problema")
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                }
            }
            .navigationTitle("Weedify")
            .background(Color(.systemGroupedBackground))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
