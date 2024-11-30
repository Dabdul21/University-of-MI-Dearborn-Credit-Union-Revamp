//
//  ExpensifyView.swift
//  ExTrak
//
//  Created by Dayan Abdulla on 10/13/24.
//

import SwiftUI

struct ExpensifyView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background Gradient
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0/255, green: 40/255, blue: 94/255),   // Dark Blue (0, 40, 94)
                        Color(red: 248/255, green: 224/255, blue: 80/255), // Maize Yellow (248, 224, 80)
                        Color(red: 255/255, green: 221/255, blue: 0/255)   // Bright Yellow (255, 221, 0)
                    ]),
                    startPoint: .bottom,
                    endPoint: .top
                )
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    // Logo Image
                    Image("umc")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 350)
                        .padding(.bottom, 20)
                        .shadow(radius: 10)
                    
                    Text("Tap anywhere to get started")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(Color(red: 248/255, green: 224/255, blue: 80/255) // Maize Yellow (248, 224, 80)
) 
                        .padding(.top, 50)
                        .shadow(radius: 10)

}
                
                // Full screen NavigationLink
                NavigationLink(destination: ContentView()) {
                    Color.clear
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Coves the whole screen
            }
        }
    }
}

struct ExpensifyView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensifyView()
    }
}
