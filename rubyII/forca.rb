def da_boas_vindas
  puts "Bem vindo ao jogo da Forca *_*"
  puts "Qual o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n"
  puts "Começaremos o jogo da forca para voce, #(nome}"
  nome
end

def sorteia_palavra_secreta
  puts "Escolhendo uma palavra..."
  palavra_secreta = "programador"
  puts "Escolhida uma palavra com #{palavra_secreta.size} letras...boa sorte!"
end

def nao_quer_jogar?
  puts "Deseja jogar novamente?(S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute chutes, erros
  puts "/n/n/n/n/n"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora #{chutes}"
  puts "Entre com a letra ou palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

def joga(nome)
  palavra_secreta = sorteia_palavra_secreta

  erros = 0
  chutes = []  
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute chutes, erros
    chutes << chute

    chutou_uma_unica_letra = chute.size = 1
 
    if chutou_uma_unica_letra
    total_encontrado = 0

      for i = 0..(palavra_secreta.size - 1)
          letra = palavra_secreta[i]
          if letra == chute
            total_encontrado +=1
          end
      end

      if total_encontrado = 0
        puts "Letra não encontrada!"
        erros +=1
      else
        puts "Letra encontrada #{total_encontrado} vez"
      end      
    else
      acertou = chute == palavra_secreta
      if acertou
        puts"Parabéns! você acertou !!!"
        pontos_ate_agora += 100
        break
      else
        puts "Que pena...errou! "
        pontos_ate_agora -= 30
        erros += 1
    end
  end

  puts "Você ganhou #{pontos_ate_agora} pontos."

end




nome = boas_vindas

loop do 
  joga nome
  break if nao_quer_jogar?
end







