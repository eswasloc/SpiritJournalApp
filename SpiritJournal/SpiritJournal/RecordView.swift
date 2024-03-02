//
//  RecordView.swift
//  SpiritJournal
//
//  Created by Jinna Cha on 2024/03/01.
//

import SwiftUI

struct RecordView: View {
    @State private var spiritName: String = ""
    
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
            
            // 여기에 더 많은 UI 요소 추가 가능
            
        }
        .padding()
    }
}

#Preview {
    RecordView()
}
