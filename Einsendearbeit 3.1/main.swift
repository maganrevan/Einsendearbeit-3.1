//
//  main.swift
/* ####################################################
                Einsendeaufgabe 3.1
 ##################################################### */
//
//  Created by Magnus Kruschwitz on 18.07.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

import Foundation

func testLeapYear(iYear : Int) -> Bool{
    var isLeapYear = false
    
    if (iYear % 4 == 0){
        if(iYear % 100 != 0){
            isLeapYear = true
        }
        else if iYear % 400 == 0{
            isLeapYear = true
        }
        
    }
    
    return isLeapYear
}

var bFlag = true

while bFlag{
    print("Bitte geben Sie das zu testende Jahr an. Mit 1 beenden Sie das Programm.")
    let iUserInput = Int(readLine()!)!
    
    if iUserInput == 1{
        bFlag = false
    }
    else if testLeapYear(iYear: iUserInput){
        print("Das Jahr \(iUserInput) ist ein Schaltjahr.")
    }
    else{
        print("Das Jahr \(iUserInput) ist kein Schaltjahr.")
    }
}
print("Das Programm wurde beendet.")
