import Foundation

print("Informe um numero de 0 a 100:")

let numero = Double(readLine()!)!

if numero >= 0 && numero <= 25 {
    print("Intervalo 1")
} else if numero >= 25 && numero <= 50 {
    print("Intervalo 2")
} else if numero >= 50 && numero <= 75 {
    print("Intervalo 3")
} else if numero >= 75 && numero <= 100 {
    print("Intervalo 4")
} else {
    print("Fora do intervalo")
}