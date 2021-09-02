# Um Json é um array de hash
livros = [
    {
        id: 10,
        name: 'Lord of the Rings',
        author: 'J. R. R. Tolkien'
    },
    {
        id: 2,
        name: 'Hobbit',
        author: 'J. R. R. Tolkien'
    },
    {
        id: 0,
        name: 'Mistborn',
        author: 'Brandon Sanderson'
    },
    {
        id: 4,
        name: 'A song of ice and fire',
        author: 'George R. R. Martin'
    }
]

# Para ordenar um json
ordenado = livros.sort_by { |livro| livro[:id] }
ordenado == [
    {
        :id=>0,
        :name=>"Mistborn",
        :author=>"Brandon Sanderson"
    },
    {
        :id=>2,
        :name=>"Hobbit",
        :author=>"J. R. R. Tolkien"
    },
    {
        :id=>4,
        :name=>"A song of ice and fire",
        :author=>"George R. R. Martin"
    },
    {
        :id=>10,
        :name=>"Lord of the Rings",
        :author=>"J. R. R. Tolkien"
    }
]

# Exemplo: https://pokeapi.co/api/v2/pokemon
