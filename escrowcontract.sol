pragma solidity ^0.5.0;

contract Escrow {
    
    address payable public payee;
    address payable public beneficiary;
    address public witness;
    address public judge;
    bool public testified;
    bool public escalated;
    
    modifier only(address role) {
        require(msg.sender == role);
        _;
    }
    
    constructor(address payable _payee, address payable _beneficiary, address _witness) public {
        //TODO: set the payee to _payee, beneficiary to _beneficiary and witness to _witness
        // msg.sender is the person who calls this function (in this case: creates the contract)
        payee = _payee;
        beneficiary = _beneficiary;
        witness= _witness;
        judge = msg.sender;
    }
    
    // TODO: fill in the function bodies of testify (1 line of code). Hint: look at the boolean testified (line 9)
    function testify() public only(witness) {
        testified = true ;
    }
    
    // TODO: fill in the function bodies of escalate (1 line of code)
    function escalate() public only(payee) {
        escalated = true;
    }
    
    // (this) returns the contract address!!!
    
    function judgeEscalation(bool toBeneficiary) public only(judge) {
        require(escalated = true);
        if(toBeneficiary) {
            beneficiary.transfer(address(this).balance);
        } else {
            //TODO: arrange the transfer to the payee
            payee.transfer(address(this).balance);
        } 
    }
    
    function payout() public {
        require(testified = true);
        //TODO: arrange the transfer to the correct address
        beneficiary.transfer(address(this).balance);
    }
    
    function() external only(payee) {
        
    }
}





