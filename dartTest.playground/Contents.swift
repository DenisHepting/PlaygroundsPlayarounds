//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



// Game Class


// Player Class
struct Player{
    var name: String
    var averagePoints = 0
    var currentPoints = 0
    
    init(name: String) {
        self.name = name
    }
    
}

//type should be enum i guess, even if i dont have a glue about enums
// Game is the master/ superclass that just holds the basic functions 
// and inherits those to the different game types 

class Game{
    // to initialize
    var gameType: String
    var players =  [Player]()
    // predifined
    var rounds = 0
    
    
    // initializer
    init(gameType: String, players: [Player]) {
        self.gameType = gameType
        self.players = players
    }
    
    func printType(){
        print(gameType)
    }
    
}


// Class for the x01 games like 301, 501, 701
class x01 : Game{
    var startPoints = 0
    
    // For x01 set all the points to the starting point that is 
    // selected and count down afterwards
    
    func createGame(){
        // Look which kind of Game was created
        // And set the startpoints for the game
        switch gameType {
            
        case "301":
            startPoints = 301
        case "501":
            startPoints = 501
        case "701":
            startPoints = 701
        default:
            startPoints = 301
        }
        // Add the startvalue to all the players 
        
        for i in 0...players.count-1{
            players[i].currentPoints = startPoints
        }
    
    }
    
    // Use the points form the current throw and subtract them from 
    // the players current points
    func countDown(){
    
    // if one of the players is at zero he won
    
        
    // if he threw over it he lost and goes back to his last current points
        
        
    }
}




// cricket class for the cricket game 3x20 3x19...
class cricket : Game{
    //
    


}





// Destroy Dart 
// every time a number like 222 or 11 comes up everybody else need 
// to drink a shot














var player1 = Player(name: "Peter")
var player2 = Player(name: "Jens")
var currentPlayers = [player1, player2]


var dreiNullEins = x01(gameType: "301", players: currentPlayers)
dreiNullEins.createGame()





















