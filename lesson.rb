
puts "じゃんけん・・・"

def g
  @result = ""
end

def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player = gets.to_i
  program = rand(3)
  
  jankens = ["グー", "チョキ","パー"]
  puts "ホイ!"
  puts "---------------"
  puts "あなた:#{jankens[player]}を出しました"
  puts "相手:#{jankens[program]}を出しました"
  
  win = (player == 0 && program == 1)||(player == 1 && program == 2)||(player == 2 && program == 0)
  drow = player == program
  surrender = player == 3
  
  if drow 
    puts "あいこで"
    @result = "drow"
  elsif win 
    puts "あなたの勝ちです"
    @result = "win"
  elsif surrender
    puts "あなたの負けです"
  else 
    puts "あなたの負けです"
    @result = "lose"
  end

if
    @result == "win"
    puts "---------------"
    puts "あなた：あっち向いて〜"
    puts "指す方向：0(上)1(下)2(左)3(右)"
    player_hand = gets.to_i
    program_hand =rand(4)
    atmits = ["上", "下", "左", "右"]
    puts "ホイ!"
    puts "---------------"
    puts "あなた：#{atmits[player_hand]}"
    puts "相手:#{atmits[program_hand]}"
    
    if player_hand == program_hand
      puts "あなたの勝ちです"
    else
      janken
    end
elsif
    @result == "drow"
    janken
elsif
    @result == "lose"
    puts "---------------"
    puts "相手：あっち向いて〜"
    puts "あなたの向く方向：0(上)1(下)2(左)3(右)"
    player_hand = gets.to_i
    program_hand =rand(4)
    atmits = ["上", "下", "左", "右"]
    puts "ホイ!"
    puts "---------------"
    puts "あなた：#{atmits[player_hand]}"
    puts "相手:#{atmits[program_hand]}"
    if player_hand == program_hand 
       puts "あなたの負けです"
    else 
      janken
    end
end

end

janken

