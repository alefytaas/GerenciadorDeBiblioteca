require_relative 'biblioteca'
require_relative 'livro'

cabana = Livro.new("Engenharia de Software Descomplicada", "Mauricio Aniche", :EngenhariaDeSoftware)
teste_e_design = Livro.new("Engenharia de Software complicada", "Mauricio Anichetes", :EngenhariaDeSoftware)
outro_livro = Livro.new("Prgramação WEB com Ruby", "Marco Doido", "teste")

livro1 = Livro.new("Ruby Programming", "Autor A", "Tecnologia")
livro2 = Livro.new("Aprendendo Ruby", "Autor B", "Tecnologia")
livro3 = Livro.new("Romance em Ruby", "Autor C", "Ficção")


biblioteca = Biblioteca.new
biblioteca.adicionar_livro(cabana)
biblioteca.adicionar_livro(teste_e_design)
biblioteca.adicionar_livro(outro_livro)
biblioteca.adicionar_livro(livro1)
biblioteca.adicionar_livro(livro2)
biblioteca.adicionar_livro(livro3)

biblioteca.mostrar_livros_por_genero(:EngenhariaDeSoftware)
biblioteca.mostrar_livros_por_autor("Autor A")
biblioteca.mostrar_livros_por_titulo("Ruby")