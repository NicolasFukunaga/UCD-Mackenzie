import Foundation

print("Digite uma mensagem: ")
    
let entrada: String? = readLine()

if let texto = entrada {
    print("Você digitou: \(texto)")
}   else {
    print("Nada foi digitado.")
}