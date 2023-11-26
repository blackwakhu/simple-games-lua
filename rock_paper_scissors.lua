#!/usr/bin/lua

--[[
--
--author: derrick wakhu shibero
--]]
--


function game()
  gen = math.fmod(math.random(1, 100), 3)
  values = {"rock", "paper", "scissors"}
  choice = ""
  while choice == "" do
    print("enter between rock, paper and scissors")
    choice  =  io.read()
    choice = string.lower(choice)
    if choice ~= "rock" and choice ~= "paper" and choice ~= "scissors"then 
      choice = ""
    end
  end
  if choice == values[gen + 1] then
    print("it is a tie")
  elseif values[gen+1] == "rock" and choice == "paper" then
    print("you won")
  elseif values[gen+1] == "paper" and choice == "scissors" then
    print("you won")
  elseif values[gen+1] == "scissors" and choice == "rock" then
    print("you won")
  else
    print("you lost")
  end
end

while true do
  print("do you want to play reply with yes or no")
  reply = io.read()
  if string.lower(reply) == "no" or string.lower(reply) == "n" then
    print("thank you for playing the game")
    break
  elseif string.lower(reply) == "yes" or string.lower(reply) == "y" then
    game()
  else 
    print("invalid input! please try again")
  end
end
