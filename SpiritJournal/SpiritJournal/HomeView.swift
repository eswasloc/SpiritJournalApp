//
//  HomeView.swift
//  SpiritJournal
//
//  Created by Jinna Cha on 2024/03/01.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var spiritList: SpiritList
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(spiritList.spirits) {spirit in
                        Text(spirit.name)
                    }
                }
                .navigationBarTitle("술 목록", displayMode: .inline)
                
                // NavigationLink를 사용하여 "기록하기" 버튼 추가
                NavigationLink(destination: RecordView().environmentObject(spiritList)) {
                    Text("기록하기")
                        .padding() // 버튼 주위에 패딩 추가
                        .background(Color.blue) // 버튼 배경색 설정
                        .foregroundColor(.white) // 버튼 텍스트 색상 설정
                        .cornerRadius(10) // 버튼 모서리를 둥굴게 설정
                }
                .padding(.bottom)
            }
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView().environmentObject(SpiritList())
        }
    }
}
