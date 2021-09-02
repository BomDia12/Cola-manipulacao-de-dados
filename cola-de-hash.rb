# Declarando um Hash
hsh = { "chave" => 'valor' }
hsh2 = { chave: 'valor' }

# Como acessar um dado em um Hash
hsh["chave"] #=> 'valor'
hsh2[:chave] #=> 'valor'
hsh['outro'] #=> nil

# Adicionando valores ao Hash
hsh2[:outro] = 10 #=> { :outro => 10, :chave => 'valor' }

# Procurando a chave de um valor
hsh.key 'valor' #=> 'chave'
hsh.key 'novo' #=> nil

# Conferir se o hash possui a chave
hsh.key? 'chave' #=> true

# Retorna o tamanho do Hash
hsh.size #=> 1
hsh.count #=> 1
hsh.length #=> 1

# Interando por um Hash
for pair in hsh
    p pair #=> imprime cada par no modelo [chave, valor]
end

for key, value in hsh
    p value #=> imprime todos os valores no hash
end

hsh.each do |pair| # funcionalmente igual ao for
    p pair
end

hsh.each do |key, value|
    p value
end

# A maior parte dos métodos de array funcionam com hash, mas ao invés de 
# receber apenas o valor, 
