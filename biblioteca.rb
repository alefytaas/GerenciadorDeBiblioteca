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
        adicionar_genero(livro.genero, cod_livro)
        adicionar_autor(livro.autor, cod_livro)
        adicionar_titulo(livro.titulo, cod_livro)
        
    end
    

    def mostrar_livros_por_genero(genero)
        puts "\n Livros do Genero: #{genero}"
        if @genero.has_key?(genero)
                for elemento in @genero[genero]           
                puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero}"
                end
            
        else
            puts "Genero não encontrado"
        end

    end
    def mostrar_livros_por_autor(autor)
        puts "\n Livros do Autor: #{autor}"
        if @autor.has_key?(autor)
                for elemento in @autor[autor]           
                puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero}"
                end
            
        else
            puts "Autor não encontrado"
        end

    end

    def mostrar_livros_por_titulo(titulo)
        achou = false
        puts "\n Livros que contem no Titulo: #{titulo}"
        @titulo.each_key do |key|
            if key.include?(titulo)
                achou = true
                for elemento in @titulo[key]           
                    puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero}"
                    
                end
            end
        end
        if achou == false
            puts "Livro não encontrado"    
        
        end
    end
    private
    def adicionar_genero(genero, cod_livro)
        if @genero.has_key?(genero)
           @genero[genero] << cod_livro
        else
            @genero[genero] ||= [cod_livro]
        end
    end
    
    def adicionar_autor(autor, cod_livro)
        if @autor.has_key?(autor)
            @autor[autor] << cod_livro
          else
              @autor[autor] ||= [cod_livro]
          end
    end
    
    def adicionar_titulo(titulo, cod_livro)
        if @titulo.has_key?(titulo)
            @titulo[titulo] << cod_livro
          else
              @titulo[titulo] ||= [cod_livro]
          end
    end
    end

    

