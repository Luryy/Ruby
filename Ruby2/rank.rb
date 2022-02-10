def le_rank
    conteudo_atual = File.read("rank.txt")
	puts conteudo_atual
    dados = conteudo_atual.split("\n")
end

def salva_rank(nome, pontos)
    conteudo = "#{nome}\n#{pontos}"
    File.write("rank.txt", conteudo)
end
