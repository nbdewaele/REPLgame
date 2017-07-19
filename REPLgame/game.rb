status = {:money => 500.00, :blood_alcohol => 0}


puts "Welcome to Saturday Night!: The Miami Night Life Adventure Game"
puts "A game by Alex."

puts "9:34 PM You've woken up from your after work nap. You've got an hour until Victoria's pre-game in
Brickell. You spend some time Snapchat stalking to see what people are up to tonight."
puts "Press ENTER to continue"

user_input = gets

if user_input == "\n"
  puts "..."
else
  until user_input == "\n"
    puts "Press ENTER to continue"
    user_input = gets
  end
  puts "..."
end

puts "11:05 You're dressed and now you really don't feel like going. Hmmm....here comes a text from Vicki"
puts "Press ENTER to continue"

user_input = gets

if user_input == "\n"
  puts "..."
else
  until user_input == "\n"
    puts "Press ENTER to continue"
    user_input = gets
  end
  puts "..."
end

puts "Vicki: ARE YOU COMING,BRO!? FIREBALL AND CIROC. COME THRUUUUUUUU."
puts "Are you going, Bro?"

puts "A. Call the Uber"
puts "B. Say you have a thing you need to do and watch Netflix instead"

user_input = gets.chomp.upcase

puts "\n"

if user_input == "A"
  puts "..."
elsif user_input == "B"
  puts "You: Hey, my Mom needs me to go over and fix her computer, yeah I know, it's Saturday. Super weird. Hahahaha."
  puts "Vicki: UGGGHHHH, lame. Next time then."
  puts "GAME OVER! Stats: Money: #{status[:money]} Blood/Alcohol: #{status[:blood_alcohol]}"
  exit
else
  puts "ERROR: Start Game Again"
  exit
end

puts "Knocking on door..."
puts "Victoria: YOU MAAAAAADE IT. Here, take a shot!"
status[:blood_alcohol] += 10
puts "Blood/Alcohol: #{status[:blood_alcohol]}%"
puts "It's fireball. Gross."

status[:blood_alcohol] += 20
puts "Loading..."
sleep(3)
puts "\n"
puts "..."
puts "12:17 AM Everybody is pretty lit now. Including you. Blood/Alcohol: #{status[:blood_alcohol]}%. It's about time to go."

puts "A. Round up everyone and call the Uber"
puts "B. Wait awkwardly until someone else does it"

user_input = gets.chomp.upcase

puts "\n"

if user_input == "A"
  puts "..."
  puts "You: LET'S GET IT! I'm calling the Uber. We're going to Side Bar, right?"
elsif user_input == "B"
  puts "Justin: Yo, Vicki! Are we leaving, yet? "
  puts "Victoria: Hold on, let me take a selfie. *Sticks tounge out and poses* Alright. I'm calling Uber."
else
  puts "ERROR: Start Game Again"
end

puts "Loading..."
sleep(3)
puts "\n"
puts "..."
puts "12:47 Side Bar is lit tonight! *MIGOS 'Handsome and Wealthy' plays in the background*"
puts "Bartender: Hey you! What are you drinking?!"
Thread.start { `afplay migos.mp3&` }
puts "\n"



until (status[:blood_alcohol] > 95) || (status[:money] < 0)
  puts "A.Stella : + 5 B/A -$8"
  puts "B.Tequila : + 15 B/A -$15"
  puts "C.Henny : + 45 B/A -$18"
  puts "D.Leave the bar"
  puts "\n"

  user_input = gets.chomp.upcase

  if user_input == "A"
     status[:blood_alcohol] += 5
     status[:money] -= 8
     puts "Money: #{status[:money]} Blood/Alcohol: #{status[:blood_alcohol]}%"
  elsif user_input == "B"
    status[:blood_alcohol] += 15
    status[:money] -= 15
    puts "Money: #{status[:money]} Blood/Alochol: #{status[:blood_alcohol]}%"
  elsif user_input == "C"
     status[:blood_alcohol] += 45
     status[:money] -= 18
     puts "Money: #{status[:money]} Blood/Alcohol: #{status[:blood_alcohol]}% "
  elsif user_input == "D"
    puts "Bartender: See you later, Sweetheart!"
    puts "Money: #{status[:money]} Blood/Alcohol: #{status[:blood_alcohol]}% "
    break
  else
    puts "Sorry, Honey! We don't have any of that tonight."
  end

end

puts "Loading..."
sleep(3)

puts "2:30 AM *You've got a Twitter Notfication* '@LIV_Miami: Diddy and Drake are at LIV, for a surprise appearance!'"

puts "\n"
puts "Loading..."
sleep(3)
puts "GAME OVER: LEVEL 2 COMING SOON"
