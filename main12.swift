import Foundation

let telefone = readLine()

if let telefone = telefone {
  if let telefoneInteiro = Int(telefone){
    print(type(of: telefoneInteiro))
  } else {
  print("Esse valor não pode ser convertido")
  }
} 

else {
  print("Valor não encontrado")
}
