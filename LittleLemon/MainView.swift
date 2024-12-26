//
//  ContentView.swift
//  LittleLemon
//
//  Created by Swain, Susrut (Cognizant) on 26/12/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var model = Model()
    @State var tabSelection = 0
    
    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex) {
                LocationView()
                    .tag(0)
                    .tabItem {
                        if !model.displayingReservationForm {
                            Label("Location", systemImage: "fork.knife")
                        }
                    }
                ReservationView()
                    .tag(1)
                    .tabItem {
                        if !model.displayingReservationForm {
                            Label("Reservations", systemImage: "square.and.pencil")
                        }
                    }
            }
            // LocationsView contains an @EnvironmentObject variable that is used to receive the model created and submitted as an environment variable in MainView. 
            .environmentObject(model)
    }
}

#Preview {
    MainView()
}
