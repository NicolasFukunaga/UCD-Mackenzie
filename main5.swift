print("Digite o início:")

let inicio = Int(readLine()!)!

var duracao = 0

print("Digite o fim:")

let fim = Int(readLine()!)!


if fim < inicio{
   duracao = (24 - inicio) + fim
}
else {
    duracao = fim - inicio
}

print("O jogo durou \(duracao)")