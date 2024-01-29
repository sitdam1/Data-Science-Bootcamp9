import random     
def gamerockpapersis():
  method = ["rock","paper","scissors"]
  score = 0
  n=0
  print(" Hello Welcome to Rock PaPer Scissors GAME ")
  while True :
    textwel =[" If You would Like to Play Please Type Yes If no Type Other: "," If You would Like to Play Again Please Type Yes If no Type Other: "]
    say = input(textwel[n])
    s=say.lower()
    if s == "yes":
      n=1
      bot = random.choice(method)
      plyer = input("Please Choose Rock/PaPer/Scissors: ")
      player = plyer.lower()
      print(f"You Choose: {player} and Bot Choose: {bot}")
      if player == bot :
        print(" !! DRAW !! ")
        print(f"You Score {score}")
      elif (player == method[0] and bot == method[1]) or (player == method[1] and bot ==method[2]) or (player == method[2] and bot == method[0]):
        print(" !! You Lose !! ")
        score = score-1
        print(f"You Score {score}")
      elif (player == method[0] and bot == method[2]) or (player == method[1] and bot == method[0]) or (player == method[2] and bot == method[1]):
        print(" !! You Win !! ")
        score = score+1
        print(f"You Score {score}")
      else :
        print("Sorry Not found please type only Rock/PaPer/Scissors")
    else:
      break
