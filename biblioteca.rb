require 'securerandom'
class Biblioteca
    attr_accessor :livros
    def initialize
        @livros = {}
        @genero = {}
        @autor = {}
        @titulo = {}
    end

    def adicionar_livro(livro)
        cod_livro = (0...50).map { ('a'..'z').to_a[rand(4)] }.join
        while @livros.has_key?(cod_livro)
            cod_livro = (0...50).map { ('a'..'z').to_a[rand(4)] }.join
        end
        @livros[cod_livro] = livro
        p livro.genero
        adicionar_genero(livro.genero, cod_livro)
        adicionar_autor(livro.autor, cod_livro)
        adicionar_titulo(livro.titulo, cod_livro)
        
    end
    

    def mostrar_livros_por_genero(genero)
        puts genero
        puts @genero
        puts @genero.has_key?(genero)
        if @genero.has_key?(genero)
            @genero[genero].each do |generos|
                generos.each do |elemento|
                puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero}"
                end
            end
        else
            puts "Genero não encontrado"
        end

    end
    private
    def adicionar_genero(genero, cod_livro)
        if @genero.has_key?(genero)
            @genero[genero] << cod_livro
          else
              @livros[genero] ||= [cod_livro]
          end
    end
    
    def adicionar_autor(autor, cod_livro)
        if @genero.has_key?(autor)
            @genero[autor] << cod_livro
          else
              @livros[autor] ||= [cod_livro]
          end
    end
    
    def adicionar_titulo(titulo, cod_livro)
        if @genero.has_key?(titulo)
            @genero[titulo] << cod_livro
          else
              @livros[titulo] ||= [cod_livro]
          end
    end
    end

    

