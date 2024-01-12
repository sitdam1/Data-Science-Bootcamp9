pizza <- function(){
    df <- data.frame(
    id = 1:5,
    topping = c("Hawaiian","Seafood Cocktail" ,"Double Cheese","Super Deluxe","Spicy Grilled Chicken"),
    prize = c(399,499,299,359,259)
)
    print("Hellow Welcome to GoodPizza")
    flush.console()
    ordername = readline("What your name: ")
    prize = 0
    countorder = c("wolud you like to order yes/no : ","wolud you like to more order yes/no : ")
    numorder =1
    sumorder = ""
    while (T){
    flush.console()
        order = readline(countorder[numorder])
        if (order == "yes"){
            print(" What toppings/pizza do you want?")
            print("Toppings and Prize you can input number order : [1]Hawaiian 399 Bath [2]Seafood Cocktail 499 Bath [3]Double Cheese 299 Bath [4]Super Deluxe,Spicy 359 Bath [5]Grilled Chicken 259 Bath")
            flush.console()
            toppings = as.integer(readline())
            if(toppings == 1){
                print(paste("How many",df[toppings,2]))
                flush.console()
                amout = as.integer(readline())
                prize = prize+(amout * df[toppings,3])
                numorder = 2
                sumorder = paste(sumorder,df[toppings,2],amout,prize,"Bath")
            }else if(toppings == 2){
                print(paste("How many",df[toppings,2]))
                flush.console()
                amout = as.integer(readline())
                prize = prize+(amout * df[toppings,3])
                numorder = 2
                sumorder = paste(sumorder,df[toppings,2],amout,prize,"Bath")
            }else if(toppings == 3){
                print(paste("How many",df[toppings,2]))
                flush.console()
                amout = as.integer(readline())
                prize = prize+(amout * df[toppings,3])
                numorder = 2
                sumorder = paste(sumorder,df[toppings,2],amout,prize,"Bath")
            }else if(toppings == 4){
                print(paste("How many",df[toppings,2]))
                flush.console()
                amout = as.integer(readline())
                prize = prize+(amout * df[toppings,3])
                numorder = 2
                sumorder = paste(sumorder,df[toppings,2],amout,prize,"Bath")
            }else if(toppings == 5){
                print(paste("How many",df[toppings,2]))
                flush.console()
                amout = as.integer(readline())
                prize = prize+(amout * df[toppings,3])
                numorder = 2
                sumorder = paste(sumorder,df[toppings,2],amout,prize,"Bath")
            }

        }else if(order == "no"){
            print(paste("Your order",sumorder))
            print(paste("Total Prize ",prize," Bath"))
            print(paste("Thank you See you next time ",ordername))
            break
    }
    else{
        print("Please input yes/no")
    }
    }

}

pizza()
