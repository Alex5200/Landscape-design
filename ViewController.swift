//
//  ViewController.swift
//  ландшафтный дизайн
//
//  Created by Александр Ляхов on 24.05.2023.
//

import UIKit

class MyLabel: UILabel {

   required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       initializeLabel()
   }

   override init(frame: CGRect) {
       super.init(frame: frame)
       initializeLabel()
   }

   func initializeLabel() {

       self.textAlignment = .center
       self.font = UIFont(name: "Halvetica", size: 17)
       self.textColor = UIColor.black

   }

}

class Main: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class ViewGallary: UIViewController{
    let const  = ["Дерево 1", "Дерево 2", "Дерево 3"]
    var myLabel = MyLabel()

        let scroll = UIScrollView()
        let st = UIStackView()

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.

            st.axis = .vertical
            st.alignment = .center
            scroll.translatesAutoresizingMaskIntoConstraints  = false
            st.translatesAutoresizingMaskIntoConstraints  = false
            view.addSubview(scroll)
            scroll.addSubview(st)
            NSLayoutConstraint.activate([
                scroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                scroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                scroll.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),

                st.widthAnchor.constraint(equalTo: self.view.widthAnchor),
                st.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor),
                st.trailingAnchor.constraint(equalTo: self.scroll.trailingAnchor),
                st.topAnchor.constraint(equalTo: self.scroll.topAnchor),
                st.bottomAnchor.constraint(equalTo: self.scroll.bottomAnchor)
            ])
            var x1 = 100
            var y2 = 100
            const.forEach {
                
                myLabel = MyLabel(frame: CGRect(x: x1, y: y2, width: 100, height: 100))
                y2 += 100
                myLabel.text = $0
                
                st.addSubview(myLabel)
            }
        }
}

