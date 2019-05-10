pragma solidity ^0.5.0;

contract HelloWorld{
    
    function hello() public pure returns(string memory){
        return "Hello to the world NIGGA";
    }
}


// ------------------------

contract Helloworld1{
    
    string name;
    
    function Helloworld() public view returns(string memory){
        return name;
    }
    
    function itisMe(string memory yourName) public {
        name = yourName;
    }
}