//
//  RecordView.swift
//  SpiritJournal
//
//  Created by Jinna Cha on 2024/03/01.
//

import SwiftUI

struct RecordView: View {
    @State private var spiritName: String = ""
    @State private var spiritType: String = ""
    
    var body: some View {
        VStack(alignment: .leading) { // Vstack 좌측 정렬 설정
            // "술 이름" 레이블 추가
            Text("술 이름")
                .fontWeight(.bold) // 글씨를 굵게
                .padding(.leading, 4)
                .padding(.bottom, 2) // 레이블과 텍스트 필드 사이 간격을 줄임
            
            TextField("술 이름 입력", text: $spiritName)
                .padding(EdgeInsets(top: 12, leading: 4, bottom: 12, trailing: 4))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal, 0)
                .padding(.bottom, 8) // 아래 레이블과 간격 조정
            
            // "술 종류" 레이블 추가
            Text("술 종류")
                .fontWeight(.bold)
                .padding(.leading, 4)
                .padding(.bottom, 2)
            
            TextField("술 종류 입력", text: $spiritType)
                .padding(EdgeInsets(top: 12, leading: 4, bottom: 12, trailing: 4))
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal, 0)
        }
        .padding()
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
