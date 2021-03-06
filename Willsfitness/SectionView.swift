//
//  SectionView.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/20.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.gray, radius: 8)

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
                    
                }
                
                Image("run").resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                HStack {
                    Text("#燃烧我的卡路里，有氧运动")
                        .font(.system(size: 13))
                        .foregroundColor(.yellow)
                        .padding(.vertical, 12)
                    Spacer()
                }
                
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
            .cornerRadius(20)
        }
        .frame(maxHeight: 300)
        
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
