class Livro
    attr_accessor :titulo, :autor, :genero

  def initialize(titulo, autor, genero)
    @titulo = titulo
    @autor = autor
    @genero = genero
  end
end
