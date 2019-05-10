pragma solidity ^0.5.0;

contract Counter {
    
    uint256 counterValue;
    
    function increaseCount() public  {
        counterValue = counterValue + 1;
    }
    
    function reset() public {
        counterValue = 0;
    
    }
    
}