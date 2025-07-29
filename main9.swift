import Foundation

print("Digite os valores:")

let x = Int(readLine()!)!
let y = Int(readLine()!)!

var menor = x 
var maior = y 

if x > y{
    maior = x 
    menor = y 
}

var soma = 0 

for i in (menor+1)..<maior{
    if i % 2 != 0{
    soma += i  
    }
    
}

print(soma)