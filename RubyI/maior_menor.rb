def da_boas_vindas
  puts "Bem vindo ao jogo de adivinhação"
  puts "Qual é o seu nome?"
  nome = gets

  puts "\n\n\n\n\n\n\n\n"
  puts "Começamos o jogo para você, #{nome}"
  nome
end

def sorteia_numero_secreto dificuldade

  case dificuldade
    when 1
      maximo = 30
    when 2
      maximo = 60
    when 3
      maximo = 100
    when 4
      maximo = 150
    else
      maximo = 200
  end

  puts "Escolhendo um número secreto entra 0 e #{maximo - 1}"
  sorteado = rand(maximo)
  puts "Escolhido... que tal adivinhar hoje nosso número secreto? '"
  sorteado
end

def verifica_se_acertou numero_secreto, chute
  acertou = numero_secreto == chute
  if acertou
    puts "Acertou mizeravi!!!" 
    return true
  else
    maior = numero_secreto > chute.to_i
    if maior
      puts "O número secreto é maior"
    else
      puts "O número secreto é menor!"
    end
    false
  end
end

def pede_um_numero chutes, tentativa, limite_de_tentativas
  puts "\n\n\n\n\n"
  puts "Tentativa #{tentativa} de  #{limite_de_tentativas}"
  puts "Chutes até agora:  #{chutes}"
  puts "Entre com o número"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute.to_i
end

def pede_dificuldade

  puts "Escolha um nível de dificuldade entre 1 e 5 ? (1 fácil, 5 difícil)"
  dificuldade = gets.to_i

end

def nao_quer_jogar?
  puts "Deseja jogar novamente ? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def joga nome, dificuldade

  numero_secreto = sorteia_numero_secreto dificuldade

  limite_de_tentativas = 5
  chutes = []
  pontos_ate_agora = 1000

  for tentativa in 1..limite_de_tentativas
      chute = pede_um_numero chutes,tentativa, limite_de_tentativas
      chutes << chute
      
      pontos_a_perder = (chute - numero_secreto) / 2
      pontos_ate_agora -= pontos_a_perder

      if verifica_se_acertou numero_secreto,chute
          break
      end
  end

  puts "Você ganhou #{pontos_ate_agora} pontos."

end

nome = da_boas_vindas
dificuldade = pede_dificuldade

  loop do 
    joga nome, dificuldade
    break if nao_quer_jogar?
  end










