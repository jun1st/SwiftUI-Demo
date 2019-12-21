//
//  HomeView.swift
//  Willsfitness
//
//  Created by fengde on 2019/12/20.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            ScrollView {
                HStack(alignment: .top) {
                    VStack(alignment: .center) {
                        SectionView()
                        SectionNoImage()
                        SectionVideoView()
                        SectionView()
                    }.padding(.leading, 20)
                        .frame(maxWidth: .infinity)

                    VStack(alignment: .center) {
                        SectionNoImage()
                        SectionVideoView()
                        SectionView()
                        
                    }
                    .padding(.trailing, 20)
                    .frame(maxWidth: .infinity)
                }
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
