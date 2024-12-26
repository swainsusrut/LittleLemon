//
//  LocationView.swift
//  LittleLemon
//
//  Created by Swain, Susrut (Cognizant) on 27/12/24.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        VStack {
            LittleLemonLogo()
            .padding(.top, 50)
 
            Text($model.displayingReservationForm.wrappedValue ? "Reservation Details" : "Select a location")
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)

            NavigationView {
                List {
                    ForEach($model.restaurants, id: \.self) { restaurant in
                        NavigationLink(destination: {
                            ReservationForm(restaurant.wrappedValue)
                        }) {
                            RestaurantView(restaurant.wrappedValue)
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
            .onDisappear {
                if model.tabBarChanged { return }
                model.displayingReservationForm = true
            }
        }
        .padding()
    }
}

#Preview {
    LocationView()
        .environmentObject(Model())
}
