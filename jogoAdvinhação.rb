resultado = rand(0..100)
vidas = 0
start = false

begin

begin

puts "=====Menu====="
puts "Escolha a dificuldade"
puts "1 - Easy"
puts "2 - Medium"
puts "3 - Hard"
puts "4 - God"

dificuldade = gets.to_i

case dificuldade
when 1
    vidas = 10
when 2
    vidas = 7
when 3
    vidas = 5
when 4
    puts "Quero ver o one tap"
    vidas = 1
    start = true
else
    puts "Opção invalida"
end

end while vidas == 0

puts ""
puts "=====Menu====="
puts "Podemos começar?"
puts "1 - Yes"
puts "2 - No"

opcaoStart = gets.to_i

case opcaoStart
when 1
    start = true
when 2
    start = false
else
    puts "Opção invalida"
end

end while start == false

puts ""
puts "Acabei de pensar em um número, tente advinhar!"
puts ""

begin

if (vidas <= 0)
    puts "Suas vidas acabaram :("
    puts "O numero era #{resultado.to_s}"
    opcao = resultado
else
    puts "Diga um número"

    opcao = gets.to_i

    if opcao > resultado
        puts ""
        puts "#{opcao.to_s} é maior que meu numero"
        vidas = vidas - 1
        puts "Você tem #{vidas.to_s} vidas restantes!"
        puts ""
    end

    if opcao < resultado
        puts ""
        puts "#{opcao.to_s} é menor que meu numero"
        vidas = vidas - 1
        puts "Você tem #{vidas.to_s} vidas restantes!"
        puts ""
    end

    if opcao == resultado
        puts ""
        puts "Parabéns!!!! O numero era #{resultado.to_s}"
    end
end

end while opcao != resultado
