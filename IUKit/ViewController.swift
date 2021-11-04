//
//  ViewController.swift
//  IUKit
//
//  Created by Елена Крылова on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    //соединяем элементы интерфейса с кодом
    @IBOutlet weak var button: UIButton!
    //соединяем элементы интерфейса с кодом
    //отвечает за свойста кнопки и текста

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHighlighted = true
        //скрываем тест с экрана
        label.text = "Привет Шурик!"
        label.font = label.font.withSize(35)
        //устанавливем размер шрифта 35
        label.textColor = UIColor.red
        //устанавливаем цвет текста красный через свойста text.Control тип UIControl через точечный индекс пишем цвет
        
        button.setTitle("Нажми на меня!", for: UIControl.State.normal)
        //задем заголовок кнопки и обычное положение кнопки
        button.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        //задаем цвет кнопки и обычное положение кнопки
        button.backgroundColor = UIColor.green
        //изменчем цвет заливки
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        //соединяем элементы интерфейса с кодом
        //выполдяет дествия связанные с кнопкой
        
        if label.isHighlighted {
            //делаем проверку видимости тества
            label.isHighlighted = false
            //если текст открыт
            label.text = "Как дела?"
            //задаем значение теста
            
            button.setTitle("нажми на меня", for: UIControl.State.normal)
            //задаем значение кнопки и положение
            button.setTitleColor(.white, for: .normal)
            //задаем цвет кнопки
            button.backgroundColor = .red
            //задаем фон кнопки
        } else {
            label.isHighlighted = true
            //если текст скрыт
            label.text = "Привет Шурик"
            button.setTitle("нажми на меня", for: .normal)
            //задаем значение кнопки и положение
            button.setTitleColor(.blue, for: .normal)
            //задаем цвет и положение
            button.backgroundColor = .green
            //задаем фон
        }
        
        //label.isHighlighted = false
        //после нажание делаем текс видимым
        //label.text = "Как дела?"
        //Присваиваем значение текста
        
   
    }
    
}

