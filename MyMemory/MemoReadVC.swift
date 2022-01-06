//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by 꼼꼼한재은님 on 2020/04/19.
//  Copyright © 2020 꼼꼼한재은님. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    
    // 콘텐츠 데이터를 저장하는 변수
    var param: MemoData?

    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        // ① 제목과 내용, 이미지를 출력
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        // ② 날짜 포맷 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        // ③ 내비게이션 타이틀에 날짜를 표시
        self.navigationItem.title = dateString
    }
}
