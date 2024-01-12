game <- function(){
    point = 0
    while (T){
        flush.console()
        play = readline("Welcome to Rock Paper scissors Game play or no: ")
        if (play == "play"){
        print(paste("current point: ",point))
        hands = c("rock","scissors","paper")
        cpu_hands =sample(hands,1)
        player_hand = readline("player_hand: ")
        print(paste("Bot Hand: ",cpu_hands))
            if (player_hand == cpu_hands){
                point = point
                print("Draw")
            }else if (player_hand == hands[1] & cpu_hands == hands[2]){
                point = point +1
                print("Win + 1 point")
            }else if (player_hand == hands[2] & cpu_hands == hands[3]){
                point = point +1
                print("Win + 1 point")
            }else if (player_hand == hands[3] & cpu_hands == hands[1]){
                point = point +1
                print("Win + 1 point")
            }else if (player_hand == hands[1] & cpu_hands == hands[3]){
                point = point -1
                print("Lose - 1 point")
            }else if (player_hand == hands[2] & cpu_hands == hands[1]){
                point = point -1
                print("Lose - 1 point")
            }else if (player_hand == hands[3] & cpu_hands == hands[2]){
                point = point -1
                print("Lose - 1 point")
            }else if (player_hand != "rock" | player_hand != "scissors" | player_hand != "paper"){
                print("Sorry You can choose only rock,scissors,paper")
            }
        print(paste("new point: ",point))
        }
        else if (play =="no"){
            print(paste("total point: ",point))
        break
        }
}
}

game()
