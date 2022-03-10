//
//  Persone.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 10.03.2022.
//

struct Person {
    
    let login: String
    let password: String
    let fullName: String
    let info: String
    
    static func getPerson() -> Person {
        Person(
            login: "RUS",
            password: "Password",
            fullName: "Ruslan Esfirev",
            info: "На данный момент я закончил Московский Политехнический Университет. Постоянного места работы не имею. Активно изучаю Swift, закончил курсы от SwiftBook и на данный момент: Разбираюсь в синтаксисе языка,  знаю принципы ООП, основы работы с git, также создаю интерфейс через Storyboard или код, SwiftUI, UIKit." )
    }
}
