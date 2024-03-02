//
//  HomeView.swift
//  SpiritJournal
//
//  Created by Jinna Cha on 2024/03/01.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                // "Spirit Journal" 이름 보여주기
                Text("Spirit Journal")
                    .font(.system(size: 18))// 글자 크기를 18로 설정
                    .fontWeight(.bold)// 글자를 굵게
                    .padding(.top, 20)
                Spacer()// 나머지 공간을 채워 화면 상단에 텍스트를 배치
                
                // NavigationLink를 사용하여 "기록하기" 버튼 추가
                NavigationLink(destination: RecordView()) {
                    Text("기록하기")
                        .padding() // 버튼 주위에 패딩 추가
                        .background(Color.blue) // 버튼 배경색 설정
                        .foregroundColor(.white) // 버튼 텍스트 색상 설정
                        .cornerRadius(10) // 버튼 모서리를 둥굴게 설정
                }
                Spacer() // 버튼과 화면 하단 사이의 공간을 만듦
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
