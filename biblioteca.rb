require 'securerandom'
class Biblioteca
    attr_accessor :livros
    def initialize
        @livros = {}
        @genero = {}
        @autor = {}
        @titulo = {}
    end

    def menu
        conue = true
        while conue
        puts "MENU"
        puts "1 - Adicionar Livro"
        puts "2 - Excluir Livro"
        puts "3 - Buscar Livro"
        puts "4 - Mostrar Livros"
        puts "5 - Sair"

        puts "digite sua opção: "
        opcao = gets.chomp.to_i
        case opcao
        when 1
            puts "Qual o nome do Livro?"
            nome = gets.chomp
            puts "Qual o autor do Livro?"
            autor = gets.chomp
            puts "Qual o genero do Livro?"
            genero = gets.chomp
            adicionar_livro(Livro.new(nome, autor, genero))
        when 2
            puts "Qual o Codigo do livro que deseja excluir?"
            cod_livro = gets.chomp
            excluir_livro(cod_livro)
        when 3
            puts "1 - Buscar por genero"
            puts "2 - Buscar por autor"
            puts "3 - Buscar por titulo"
            puts "\n Qual a opção que deseja?"
            opcao = gets.chomp.to_i
            case opcao
            when  1
                puts "Qual o genero?"
                string = gets.chomp
            when  2
                puts "Qual o autor?"
                string = gets.chomp
            when  3
                puts "Qual o titulo?"
                string = gets.chomp
            else
                puts "Opção inválida"
            end
            buscar_livro(opcao, string)
        when 4
            mostrar_livros
        when 5
            conue = false
        else
            puts "Opção inválida"
            end
        end
    end

    def excluir_livro(cod_livro)
        @genero[@livros[cod_livro].genero].delete_at(@genero[@livros[cod_livro].genero].find_index(cod_livro))
        @autor[@livros[cod_livro].autor].delete_at(@autor[@livros[cod_livro].autor].find_index(cod_livro))
        @titulo[@livros[cod_livro].titulo].delete_at(@titulo[@livros[cod_livro].titulo].find_index(cod_livro))
        @livros.delete(cod_livro)
    end

    def buscar_livro(opcao, string)
        case opcao
        when  1 #Busca por genero
            mostrar_livros_por_genero(string)
          
        when  2 #Busca por autor
            mostrar_livros_por_autor(string)
          
        when  3 #Busca por titulo
            mostrar_livros_por_titulo(string)
          
        else
            puts "Opção inválida"
          
        end 
    end

    def adicionar_livro(livro)
        cod_livro = (0...5).map { ('a'..'z').to_a[rand(26)] }.join
        while @livros.has_key?(cod_livro)
            cod_livro = (0...5).map { ('a'..'z').to_a[rand(26)] }.join
        end
        @livros[cod_livro] = livro
        adicionar_genero(livro.genero, cod_livro)
        adicionar_autor(livro.autor, cod_livro)
        adicionar_titulo(livro.titulo, cod_livro)
        
    end
    
    def mostrar_livros
        puts "Livros da biblioteca \n"
      @livros.each do |key, value|
        puts "#{value.titulo} - #{value.autor} - #{value.genero} - Cod_Livro: #{key}"
      end   
    end


    private
    def mostrar_livros_por_genero(genero)
        puts "\n Livros do Genero: #{genero}"
        if @genero.has_key?(genero)
                for elemento in @genero[genero]           
                puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero} - Cod_Livro: #{elemento}"
                end
            
        else
            puts "Genero não encontrado"
        end

    end
    def mostrar_livros_por_autor(autor)
        puts "\n Livros do Autor: #{autor}"
        if @autor.has_key?(autor)
                for elemento in @autor[autor]           
                puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero} - Cod_Livro: #{elemento}"
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
                    puts "#{@livros[elemento].titulo} - #{@livros[elemento].autor} - #{@livros[elemento].genero} - Cod_Livro: #{elemento}"                   
                end
            end
        end
        if achou == false
            puts "Livro não encontrado"    
        
        end
    end
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

    

