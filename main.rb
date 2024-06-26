require_relative 'biblioteca'
require_relative 'livro'

cabana = Livro.new("Engerenharia de Software Descomplicada", "Mauricio Aniche", :EngenhariaDeSoftware)
teste_e_design = Livro.new("Engerenharia de Software complicada", "Mauricio Anichetes", :EngenhariaDeSoftware)
outro_livro = Livro.new("Prgramação WEB com Ruby", "Marco Doido", "teste")

biblioteca = Biblioteca.new
biblioteca.adicionar_livro(cabana)
biblioteca.adicionar_livro(teste_e_design)
biblioteca.adicionar_livro(outro_livro)

biblioteca.mostrar_livros_por_genero("teste")