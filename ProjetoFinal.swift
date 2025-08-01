import Foundation 

var opcaoFinal = -1 

func menu(){
    print("""
    1 - listar filmes
    2 - adicionar filmes
    3 - remover filmes
    4 - editar filmes
    5 - filme assistido
    0 - finalizar
    
    """)
}

 func listarFilmes(lista: [String]) {
    var posicao = 0
    print("")
    print("")
    print("------Filmes listados------")
    print("filme adicionado!")
     for filmes in lista {
         print("\(posicao) - \(filmes)")
         posicao += 1
        }
    print("")
    print("-----------------")
    print("")
 }

func adicionarFilmes(lista: [String], filme: String) -> [String] {
    var listaInterna = lista
    listaInterna.append(filme)
    print("filme adicionado!")
    return listaInterna
}

func removerFilmes(lista: [String], posicao: Int) -> [String] {
    var listaInterna = lista
    listaInterna.remove(at: posicao)
    print("")
    print("filme removido!") 
    return listaInterna
} 

func editarFilmes(lista: [String], posicao: Int, filmeEditado: String) -> [String] {
    var listaInterna = lista 
    listaInterna[posicao] = filmeEditado 
    print("filme editado!")
    return listaInterna 
}

func assistido(lista: [String], posicao: Int) -> [String] {
    var listaInterna = lista 
    listaInterna[posicao] = "[assistido]- " + listaInterna[posicao]
    print("assistido!")
    return listaInterna 
}


var listaGlobal: [String] = []

repeat{ 
    menu()
    print("Digite uma opcao")
    
    guard let opcao = readLine(),
          let opcaoInt = Int(opcao) else {
              print("Erro: Texto foi digitado")
              continue
          } 
          
    opcaoFinal = opcaoInt
    
    switch opcaoFinal {
 
        case 1: 
            if listaGlobal.isEmpty {
                continue
            }
            listarFilmes(lista: listaGlobal)
    
        case 2: 
            guard let filmeEscolhido = readLine() else {
                exit(1) 
            }
            listaGlobal = adicionarFilmes(lista: listaGlobal, filme: filmeEscolhido)
            
        case 3:
            if listaGlobal.isEmpty {
                continue
            }
            listarFilmes(lista: listaGlobal) 
            print("Escolha o indice do filme a ser removido")
            guard let posicaoFilmeEscolhido = readLine(), 
                  let posicaoInt = Int(posicaoFilmeEscolhido) else {
                exit(1)
            }
            listaGlobal = removerFilmes(lista: listaGlobal, posicao: posicaoInt)
            
        case 4:
            if listaGlobal.isEmpty {
                continue
            }
            listarFilmes(lista: listaGlobal)
            print("Escolha o filme a ser editado")
            guard let posicaoFilmeEscolhido = readLine(), 
                  let posicaoInt = Int(posicaoFilmeEscolhido) else {
                      exit(1)
                  }
            print("Escolha um novo filme")
            guard let novoFilme = readLine() else {
                exit(1)
            }
            listaGlobal = editarFilmes(lista: listaGlobal, posicao: posicaoInt, filmeEditado: novoFilme)
        
        case 5:
        listarFilmes(lista: listaGlobal)
            print("Escolha o filme que voce ja assistiu")
            guard let entradaAssistido = readLine(), 
                  let posicaoFilme = Int(entradaAssistido) else {
                      exit(1)
                  }
                   listaGlobal = assistido(lista: listaGlobal, posicao: posicaoFilme)
            listarFilmes(lista: listaGlobal)
        case 0: 
        print("Finalizando")
        
        default: 
            print("Essa opcao nao existe")
    }
} while opcaoFinal != 0  