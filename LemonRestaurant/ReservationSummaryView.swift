//
//  ReservationSummaryView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 12/08/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    
    @Binding var username: String
    @Binding var dateReservation: Date
    @Binding var guestAmount: Int
    @Binding var allergies: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Reservation Completed")
                .font(.title)
                .foregroundColor(.green)
            Text("Thank you, \(username), your reservation is confirmed for \(guestAmount) people.")
            Text("Date: \(formattedDate(date: dateReservation))")
            Text("Guests: \(guestAmount)")
            if !allergies.isEmpty {
                Text("Allergy Notes: \(allergies)")
            }
        }
        .padding(.horizontal, 40)
    }
    
    func formattedDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}
