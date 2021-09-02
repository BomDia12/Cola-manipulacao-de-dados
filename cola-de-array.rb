# Como declarar uma Array?
arr = [1, 2, 3, 4, 5]
arr2 = Array.new 3 { |i| i**2 }

# Como acessar um dado em um array
arr[0] #=> 1
arr[0..2] #=> [1, 2, 3]
arr[-1] #=> 5
arr[5] #=> nil
arr.first #=> 1
arr.last #=> 5
arr.fetch(10) #=> IndexError
arr.fetch(10, false) #=> false
# Returns the first n numbers
arr.take 2 #=> [1, 2]
# Reterns the array without the first n numbers
arr.drop 2 #=> [3, 4, 5]

# Coletando informações sobre um array
# Tamanho de uma array
arr.size #=> 5
arr.count #=> 5
arr.length #=> 5
# Métodos com ? retornam valores booleanos
# Conferir se um valor está na array
arr.include? 5 #=> true
# Conferir se uma array está vazia
arr.empty?
# Retorna o index de um valor na array
arr.index 1 #=> 0
arr.index 0 #=> nil

# Mudando uma array

# Adicionando itens a uma array
# Ao final da Array
arr.append 6 #=> [1, 2, 3, 4, 5, 6]
arr << 7 #=> [1, 2, 3, 4, 6, 7]
# Ao início de uma Array
arr.unshift 0 #=> [0, 1, 2, 3, 4, 5, 6, 7]
# No index n de uma Array
arr.insert(4, 3.5) #=> [0, 1, 2, 3, 3.5, 4, 5, 6, 7]
arr[8] = 8 #=> [0, 1, 2, 3, 3.5, 4, 5, 6, 8]

# Removendo itens de uma array
# Remove o último termo
arr.pop #=> 8
arr #=> [0, 1, 2, 3, 3.5, 4, 5, 6]
# Remove o primeiro termo
arr.shift #=> 0
arr #=> [1, 2, 3, 3.5, 4, 5, 6]
# Remove todos os itens com o valor n
arr.delete 3.5 #=> 3.5
arr #=> [1, 2, 3, 4, 5, 6]
# Remove o item no index n
arr.delete_at 3 #=> 4
arr #=> [1, 2, 3, 5, 6]
# Retira valores repetidos
arr << 1 #=> [1, 2, 3, 5, 6, 1]
# Sem a ! esse método retorna uma nova lista ao invés de mudar a lista original
arr.uniq #=> [1, 2, 3, 5, 6]
arr #=> [1, 2, 3, 5, 6, 1]
# Com a ! esse método retorna uma nova lista e muda a lista original
arr.uniq! #=> [1, 2, 3, 5, 6]
arr #=> [1, 2, 3, 5, 6]

# Interando uma array
for i in arr
    p i # imprime todos os elementos de uma array
end

arr.each do i # funcionalmente igual ao for
    p i # imprime todos os elementos de uma array
end

arr.each { |i| p i } # condensed each format

# Os métodos a seguir retornam uma array nova, sem alterar a array original
# para mudar a array original use os mesmos métodos com !

# Aplica uma regra a todos os valores de uma array
arr.map { |i| i**2 } #=> [1, 4, 9, 25, 36]

# Seleciona apenas os valores que passam na condicional
arr.select { |i| i % 2 == 0 } #=> [2, 6]

# Seleciona apenas os valores que não passam na condicional
arr.reject { |i| i % 2 == 0 } #=> [1, 3, 5]

# Manipular Arrays

nova = [5, 4, 6, 7, 10, 2]

# Ordenar arrays
nova.sort #=> [2, 4, 5, 6, 7, 10]

# Soma da Array
nova.sum #=> 34

# Destrincha a array
exemplo = [1, [2, [3, [4]]]]
exemplo.flatten #=> [1, 2, 3, 4]
exemplo.flatten 1 #=> [1, 2, [3, [4]]]

# Juntar arrays
nova + arr #=> [5, 4, 6, 7, 10, 2, 1, 2, 3, 5, 6]

# Transoformar em texto
text = ['Eu', 'sou', 'um', 'texto', 'em', 'uma', 'array']
text * ' ' #=> 'Eu sou um texto em uma array'
text.join ' ' #=> 'Eu sou um texto em uma array'
