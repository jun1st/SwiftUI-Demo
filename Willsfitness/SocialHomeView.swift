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
                        SectionView()
                        SectionNoImage()
                        SectionVideoView()
                        SectionView()
                    }.padding(.leading, 20)
                    .frame(maxWidth: .infinity)
                }
        
    }
}

struct SocialHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SocialHomeView()
    }
}
