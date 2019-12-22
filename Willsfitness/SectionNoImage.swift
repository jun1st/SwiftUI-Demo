//
//  SectionNoImage.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/21.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct SectionNoImage: View {
    var body: some View {
        ZStack(alignment: .top) {
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
                
                
                Text("#燃烧我的卡路里，有氧运动")
                        .font(.system(size: 13))
                        .foregroundColor(.yellow)
                        .padding(.vertical, 12)
                        .layoutPriority(1)
                
                
                
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
        }
        .frame(maxHeight: 200)
    }
}

struct SectionNoImage_Previews: PreviewProvider {
    static var previews: some View {
        SectionNoImage()
    }
}
