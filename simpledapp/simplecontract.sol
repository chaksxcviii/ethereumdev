pragma solidity ^0.5.7;
contract SimpleContract{
    string public name;
    function changeName(string memory _name) public{
        name = _name;
    }
}