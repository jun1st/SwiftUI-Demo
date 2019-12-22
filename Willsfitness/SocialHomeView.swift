//
//  SocialHomeView.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/21.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct SocialHomeView: View {
    var body: some View {
        
            ScrollView {
                    VStack(alignment: .center) {
                        HStack {
                            Text("关注")
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .font(.title)
                                    .foregroundColor(.gray)
                            }
                        }
                        HStack {
                            ZStack {
                                Image("circle")
                                Image("plain-black")
                                .offset(x: -1, y: 0)
                            }
                            Spacer()
                            Image("0")
                            Spacer()
                            Image("1")
                            Spacer()
                            Image("3")
                            Spacer()
                            Image("4")
                        }
                        Divider()
                        SocialSectionView()
                        Divider()
                        SocialSectionView()
                        Divider()
                        SocialSectionView()
                        Divider()
                        SocialSectionView()
                    }.padding()
                    .frame(maxWidth: .infinity)
                }
        
    }
}

struct SocialHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SocialHomeView()
    }
}
