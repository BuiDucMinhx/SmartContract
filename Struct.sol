//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.16;

contract Struct{
    struct player{
        uint ID;
        address addr;
        string Name; 
    }
    player[] players;
    mapping(address => player) ListOfPlayers;
    string _name = "minh";
    
    function foo() external{
        player memory player1 = player(1, msg.sender, _name);
        player memory player2 = player(2, msg.sender, _name);
       
        player1.Name = "MyName";
        delete player2;
        players.push(player({ID:1, addr : msg.sender, Name:"MyName"}));
        ListOfPlayers[msg.sender] = player({ID:3, addr : msg.sender, Name:"MyName3"});
    }
}