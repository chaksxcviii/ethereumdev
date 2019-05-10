pragma solidity ^0.5.0;

/**
    In this exercise you have to fill in the variable visibilities for every variable declaration. 
    Simply replace XXX with the visibility type which you think is appropriate. 
    If you did everything corrrect, there will be only one red X (line 33) and you should be able to deploy 
    the contract by replacing pincode by 0.
*/
contract father {
    // houseAddress is accesible by the contract father and child
    string internal houseAddress = "BigStreet 25, Amsterdam"; 
    
    // pincode is only accesible by the father
    uint256 private pincode = 1234; 
    
    // the name is accesible by everybody
    string public name = "James";
}

contract child is father {
    
    // should compile
    function whereDoesMyFatherLive() public view returns(string memory) {
        return houseAddress;
    }
    
    // should compile
    function whatIsMyFathersName() public view returns(string memory) {
        return name;
    }
    
    // should not compile (replace pincode by 0 to make it compile)
    function whatIsMyFathersPincode() public pure returns(uint256) {
        return 0; // child cannot access pincode!
        //return 0;
    }
}