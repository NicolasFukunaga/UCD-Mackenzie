import Foundation 

print("Informe o número:")

let entrada = readLine()!
let numero = Int(entrada)!
var par = 0
var contador = 0

while contador <= numero {
    if contador % 2 == 0{
        par += 1 
    }
    contador += 1 
} 
print(par)