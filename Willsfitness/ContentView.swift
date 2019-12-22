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
    @State private var titleSelection = 1
    
    var body: some View {
        TabView(selection: $selection){
            GeometryReader { gr in
                VStack {
                    HStack(alignment: .bottom, spacing: 20) {
                        Button(action: {
                            self.titleSelection = 1
                        }) {
                            if(self.titleSelection == 1) {
                                Text("发现")
                                    .foregroundColor(Color.yellow)
                                    .fontWeight(.bold)
                                    .font(.title)
                            } else {
                                Text("发现")
                                    .foregroundColor(Color.gray)
                            }
                        }

                        Button(action: {
                            self.titleSelection = 2
                        }) {
                            if(self.titleSelection == 2) {
                                Text("关注")
                                    .foregroundColor(Color.yellow)
                                    .fontWeight(.bold)
                                    .font(.title)
                            } else {
                                Text("关注")
                                    .foregroundColor(Color.gray)
                            }
                            
                        }

                        Button(action: {

                        }) {
                            Text("附近")
                                .foregroundColor(Color.gray)
                        }
                        Spacer()
                    }
                    .padding(.top, 10)
                    .padding(.leading, 20)
                
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            HomeView()
                                .frame(width: gr.size.width)
                            SocialHomeView()
                                .frame(width: gr.size.width)
                        }
                    }
                    .content.offset(x: self.titleSelection == 2 ? -gr.size.width : 0, y: 0)
                    .animation(.easeInOut)
                    .frame(width: gr.size.width, height: nil, alignment: .leading)
                }
            }.tabItem {
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
