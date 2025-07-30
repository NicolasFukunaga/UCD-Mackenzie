import Foundation 

guard let entrada = readLine(),
    let numero = Int(entrada) else {
        exit(1)
    }

print(numero)

func dobro(a: Int) -> Int{
    a * 2 
}

print(dobro(a: numero))
