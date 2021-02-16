//
//  PrefaceView.swift
//  InTouch
//
//  Created by William Lowry on 2/11/21.
//

import SwiftUI

struct PrefaceView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                
                UpperLeftLogo()
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Text("Keep in touch.")
                            .shadow(radius: 10)
                            .frame(width: 370)
                            .font(.system(size: 50, weight: .light, design: .serif))
                            //.opacity(0.9)
                            .foregroundColor(Color("Primary"))
                        Spacer()
                    }
                    .padding(.top, 30)
                    
                    HStack {
                        Text("As time passes, it's easy to lose touch with the friends, family, and colleagues we value. It's easy for life to get in the way.")
                            .opacity(0.5)
                            .frame(width: 350)
                            .font(.system(size: 20, weight: .light, design: .serif))
                            .padding(.leading, 30)
                            .padding(.top, 1)
                            .shadow(radius: 10)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(" We're here to fix that.")
                            .opacity(0.5)
                            .frame(width: 200)
                            .font(.system(size: 20, weight: .light, design: .serif))
                            .padding(.leading, 25)
                            .padding(.top, 10)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: WelcomeView()) {
                        HStack {
                            Text("CONTINUE")
                                .foregroundColor(Color.white)
                                .font(.system(size: 25, weight: .light, design: .serif))
                        }
                        .padding(.horizontal, 70.0)
                        .padding(.vertical, 10.0)
                    }
                    .background(Color("Primary"))
                    .cornerRadius(5.0)
                    .shadow(radius: 1)
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct PrefaceView_Previews: PreviewProvider {
    static var previews: some View {
        PrefaceView()
    }
}
