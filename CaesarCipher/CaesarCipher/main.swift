//
//  main.swift
//  CaesarCipher
//
//  Created by Eduarda Pinheiro on 01/10/22.
//

import Foundation

//First, declare an array named alphabet and store the English alphabet into it:
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

//Create a variable called secretMessage and give it the value of "hello".
var secretMessage = "SWIFT".lowercased() //messages in lowercased
print("Secret Message: ", secretMessage)

//Swift comes with a nifty array initializer, Array(), that can convert a text string to an array of Characters:
var message = Array(secretMessage)
print("Message to encode: ", message)

//Create an empty for-in loop that iterates through the characters of message:
for i in 0 ..< message.count {
    //Create an empty for-in loop that iterates through the characters of alphabet:
    for j in 0 ..< alphabet.count {
        if message[i] == alphabet[j] {
            message[i] = alphabet[(j+3) % 26]
            break
        }
    }
}
print("Coded message: ", message)

//Convert array to string
var convertToString = String(message)
print("Convert to String: ", convertToString)


