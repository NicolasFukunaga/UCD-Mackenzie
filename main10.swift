import Foundation

func dobro (a: Int) -> Int {
    let resultado = a * 2
    return resultado
}
print("Digite um número:")
let entrada1 = Int(readLine()!)!

print(dobro(a: entrada1))
