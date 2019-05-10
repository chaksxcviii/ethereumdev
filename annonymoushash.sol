pragma solidity ^0.5.7;

contract Hashit{
    string public password;
    bytes32 public hashedpassword;
    function hashItforMe(string memory _password) public{
        password = _password;
        hashedpassword = sha256(bytes(_password));
    }
}