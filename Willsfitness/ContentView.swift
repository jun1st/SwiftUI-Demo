//
//  ContentView.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/20.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var social = false
    
    var body: some View {
        TabView(selection: $selection){
            NavigationView {
                if (!social) {
                    HomeView()
                        .navigationBarItems(leading:
                            HStack {
                                Button(action: {
                                    self.social = false
                                }) {
                                    Text("发现")
                                        .foregroundColor(Color.yellow)
                                        .fontWeight(.bold)
                                        .font(.title)
                                    
                                }
                                
                                Button(action: {
                                    withAnimation {
                                        self.social = true
                                    }
                                    
                                }) {
                                    Text("关注")
                                        .foregroundColor(Color.gray)
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    Text("附近")
                                        .foregroundColor(Color.gray)
                                }
                            }
                        )
                    }
                else {
                    SocialHomeView()
                        .navigationBarItems(leading:
                            HStack {
                                Button(action: {
                                    self.social = false
                                }) {
                                    Text("发现")
                                       .foregroundColor(Color.gray)
                                    
                                }
                                
                                Button(action: {
                                    self.social = true
                                }) {
                                    Text("关注")
                                        .foregroundColor(Color.yellow)
                                        .fontWeight(.bold)
                                        .font(.title)
                                        
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    Text("附近")
                                        .foregroundColor(Color.gray)
                                }
                            }
                        )
                }
                }
                .tabItem {
                    VStack {
                        Image("plain")
                        Text("分享")
                            .foregroundColor(Color.yellow)
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("location")
                        Text("场馆")
                    }
                }
                .tag(1)
            Text("Third View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("appointment")
                        Text("预约")
                    }
                }
                .tag(2)
            Text("Fourth View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("gift")
                        Text("福利")
                    }
                }
                .tag(3)
            Text("Fifth View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("me")
                        Text("我")
                    }
                }
                .tag(4)
        }
        .accentColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
