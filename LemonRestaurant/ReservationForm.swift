//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 07/08/25.
//

import SwiftUI

struct ReservationForm: View {
    
    @State private var username: String = ""
    @State private var guestCount: Int = 1
    @State private var date: Date = Date()
    @State private var allergies: String = ""
    @State private var showSummary: Bool = false
    
    var body: some View {
        VStack{
            Image("littleLemonLogo")
            Form{
                Section(header: Text("Reservation Details")) {
                    TextField("Name", text: $username)
                    if username.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    if guestCount > 5 {
                        let message = guestCount < 8
                        ? "For large parties, please arrive 10 minutes early"
                        : "For parties larger than 8, we will call to confirm"
                        
                        Text(message)
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                    
                    let startDate = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
                    DatePicker(
                        "Date",
                        selection: $date,
                        in: startDate...,
                        displayedComponents: [.date, .hourAndMinute]
                    )
                    
                    TextField("Allergy Notes", text: $allergies)
                    
                    Button("Confirm Reservation"){
                        if(!username.isEmpty){
                            showSummary = true
                        }
                    }
                    .disabled(username.isEmpty)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            username: $username,
                            dateReservation: $date,
                            guestAmount: $guestCount,
                            allergies: $allergies
                        )
                    }
                }
            }
        }
    }
    //            .navigationTitle(Text("Reservation Form"))
}

#Preview {
    ReservationForm()
}
