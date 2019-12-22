//
//  SocialSectionView.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/22.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct SocialSectionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("user")
                VStack(alignment: .leading) {
                    Text("段敏")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("发布于2小时23分钟前")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.top, 4)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("+ 关注她")
                        .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                        .foregroundColor(Color.yellow)
                        .font(.subheadline)
                        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1))
                }
            }
            
            HStack {
                Text("#燃烧我的卡路里，有氧运动")
                    .font(.system(size: 13))
                    .foregroundColor(.yellow)
                    .padding(.vertical, 12)
                Spacer()
            }
            
            Image("combo").resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
            
            
            
            Text("今天的活动不错，希望 Wills 越办越好")
                .font(.system(size: 13))
            
            HStack {
                Image("heart")
                Text("12K")
                    .font(.system(size: 12))
                
                Image("comments")
                    .padding(.leading, 40)
                Text("30")
                    .font(.system(size: 12))
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct SocialSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SocialSectionView()
    }
}
