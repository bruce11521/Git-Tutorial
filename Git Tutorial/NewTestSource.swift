//
//  NewTestSource.swift
//  Git Tutorial
//
//  Created by 林伯翰 on 2019/10/5.
//  Copyright © 2019 林伯翰. All rights reserved.
//

import UIKit
import Foundation
// optional optional
/*
var aa: String? = "Bruce"
var sss: String?
let a: String = sss ?? "Lin"
print(a)

if aa != nil{
    print(aa)
}
// typealias
typealias grade = Int
var gg: grade = 10
print(gg)
*/



//function inout 加上 function型別
/*
func eating(breakfast: inout String, lunch: String, dinner: String) -> String{
    var str: String = ""
    str = "Breakfast:" + breakfast + ", Lunch:"  + lunch + ", Dinner:" + dinner
    return str
    
}
let eat: (inout String,String,String) -> String = eating
var ss = "HotDog"
print(eat(&ss,"Chicken Sandwich","Fish"))
*/

//Argument function
/*
func eatExercise(sport: () -> String) -> String{
    return "Eat more than " + sport()
}
func eatExercise(sport: (Int) -> String) -> String{
    
    return "Eat more than " + sport(2)
}


func playBasketball() -> String{
    return "Basketball."
}
func playBaseball(time: Int) -> String{
    return "Baseball \(time) hours."
}
eatExercise(sport: playBasketball)
eatExercise(sport: playBaseball)

// 回傳 function 的 function
func happy() -> String {
    return "So Happy!"
}
func sad() -> String{
    return "So Sad!"
}

func feeling(_ moodGood: Bool) -> () -> String{
    if moodGood {
        return happy
    }else{
        return sad
    }
}
let today = feeling(false)
let msg = today()
*/

// Nested Function
/*
//                 add回傳一個有string參數，回傳字串的function
func add(adjective: String) -> (String) -> String{
    var str = "Super "
    func moreAdj(name: String) -> String{
        var msg = str + adjective + name
        str = str + str
        
        func more(local: String) -> String{
            msg = msg + local
            return msg
        }
        
        return more(local: "in Taiwan.") // 第三個迴圈 需要加上 argument
    }
    return moreAdj
}

let goodAdj = add(adjective: "So Cute ")
goodAdj("Girlfriend ")
*/

//closure
// { ()-> () in { }
/*
func mainProgram(first: Int, second: Int, sub: (Int, Int) -> Int  ) -> Int{
    return sub(first,second)
}
var num = 5
var num2 = 2
var result = mainProgram(first: num,second: num2, sub: { $0 - $1 })
    print(result)
*/
// Time aquires
/*
let date: Date = Date()
let dateFormatter: DateFormatter = DateFormatter()
dateFormatter.dateStyle = DateFormatter.Style.full
dateFormatter.timeStyle = DateFormatter.Style.medium
var dateFormatString: String = dateFormatter.string(from: date)
print("dateFormatString = \(dateFormatString)")
print("\(dateFormatter.dateFormat)")
dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
print("\(dateFormatter.dateFormat)")
dateFormatter.locale = Locale(identifier: "zh_Hant_TW") // 設定地區(台灣)
dateFormatter.timeZone = TimeZone(identifier: "Asia/Taipei") // 設定時區(台灣)
dateFormatString = dateFormatter.string(from: date)
print("dateFormatString: \(dateFormatString)")
*/


// computed property
/*
class songTimeDuration{
    var isMoreThanFiveMinutes: String
    let name : String
    let duration : Int
    var songStatus: String
    var storageNum,buyNum: Int
    
    init(name: String, duration: Int, songStatus: String, buyNum: Int){
        self.name = name
        self.duration = duration
        isMoreThanFiveMinutes = "."
        self.songStatus = songStatus
        self.storageNum = 10
        self.buyNum = buyNum
    }
    
    var formattedDuration: String{
        get{
            let minutes = duration / 60
            let seconds = duration % 60
            if duration / 60 >= 5{
                isMoreThanFiveMinutes = "大於五分鐘."
            }else{
                isMoreThanFiveMinutes = "小於五分鐘."
            }
            return "\(minutes)分\(seconds)秒"
        }
    }
 
}
let song = songTimeDuration(name: "SSS",duration: 311,songStatus: "On Sale", buyNum: 1)
print("\(song.name)長度\(song.formattedDuration)\(song.isMoreThanFiveMinutes)")
*/

// protocol type
protocol Idol{
    func sing()
}
    class Baby: Idol{
        func sing(){
        print("In Sing func() ")
    }
}
var cuteBaby = Baby()
