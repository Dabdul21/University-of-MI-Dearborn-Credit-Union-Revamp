//
//  ContentView.swift
//  ExTrak
//
//  Created by Dayan Abdulla on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Top Section: Greeting and Card
            VStack(spacing: 20) {
                HStack {
                    Text("Hello, Maria!")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                    // Profile image placeholder
                    Circle()
                        .fill(Color(red: 0/255, green: 40/255, blue: 94/255))  // Dark Blue (0, 40, 94)
                        .frame(width: 40, height: 40)
                }
                .padding(.horizontal)
                
                // Total Balance Card
                ZStack {
                    Image("umc") // Make sure the logo is added to your assets
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 20)
                        .shadow(radius: 10)
                        .offset(x: 100, y: 55) 

                    
                   
                    
                    VStack(alignment: .leading, spacing: 5) {
                        // Group for the "Total balance" label
                        Group {
                            Text("Total balance")
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                        }
                        
                        // Text for the total balance amount
                        Text("$ 22,358")
                            .foregroundColor(.white)
                            .font(.system(size: 36, weight: .bold))
                        
                        // Text for the card number, adjusted for better alignment
                        Text("**** **** **** 0322")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .offset(x: -70, y: 10)
                    }
                }
                .padding(.horizontal)
                
                // Income and Expense Overview
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.4))
                            .frame(height: 75)
                        VStack (alignment: .leading, spacing:0) {
                            
                            Text("Income")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                            
                            Text("$ 20,850")
                                .foregroundColor(.green/*.opacity(0.9)*/)
                                .font(.system(size: 19, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.4))
                            .frame(height: 75)
                        VStack (alignment: .leading, spacing:0) {
                            Text("Expenses")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                                .fontWeight(.semibold)

                            Text("$ 12,850")
                                .foregroundColor(.red)
                                .font(.system(size: 19, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                    }
                    
                }
                .padding(.horizontal)
            }
            .background(Color.black)
            .cornerRadius(30)
            .padding(.top)
            
            // Statistics Section
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(height: 370)
                    .offset(y:50)

                VStack(alignment: .leading) {
                    Text("Statistics")
                        .font(.system(size: 20, weight: .bold))
                        .padding(.horizontal)
                        .padding(.top, 10)
                        .foregroundColor(.black)
                    
                    HStack(spacing: 15) {
                        // Goals
                        StatCard(title: "Goals", value: "6", iconName: "flag.fill", iconColor: .orange)
                        
                        // Budgets
                        StatCard(title: "Budgets", value: "4", iconName: "creditcard.fill", iconColor: .green)
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 15) {
                        // Money Saved
                        StatCard(title: "Money saved", value: "35%", iconName: "dollarsign.circle.fill", iconColor: .red)
                        
                        // Transactions
                        StatCard(title: "Transactions", value: "26", iconName: "arrow.right.arrow.left", iconColor: .blue)
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
            
            Spacer()
            
            // Bottom Tab Bar
            HStack {
                TabBarItem(iconName: "house.fill")
                Spacer()
                TabBarItem(iconName: "magnifyingglass")
                Spacer()
                TabBarItem(iconName: "gearshape.fill")
            }
            .padding(.horizontal, 50)
            .padding(.vertical, 20)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: -5)
        }
        .background(Color.black.opacity(0.95).edgesIgnoringSafeArea(.all))
    }
}

// Reusable
struct StatCard: View {
    let title: String
    let value: String
    let iconName: String
    let iconColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: iconName)
                    .foregroundColor(iconColor)
                Spacer()
            }
            Text(value)
                .font(.system(size: 24, weight: .bold))
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)

        }
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
        .frame(maxWidth: .infinity)
    }
}

// Reusable
struct TabBarItem: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.system(size: 24))
            .foregroundColor(.black)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

#Preview {
    ContentView()
}
