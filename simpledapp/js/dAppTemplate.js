window.onload = function(){ 

// hier check op web3

if (typeof web3 !== 'undefined') {
  web3 = new Web3(web3.currentProvider);
} else {
  web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}

// hier verwijzingen naar je smart contract
var contractAddress = 'HIERSMARTCONTRACTADDRESS';
var contractABI = HIERSMARTCONTRACTABI;

contract = web3.eth.contract(contractABI).at(contractAddress);

// hier communicatie met je smart contract


// deze leest een statevariable uit
contract.NAAMVANJESTATEVARIABLE(function(err, result) {
	
	$("#HIERNAAMVANJEHTMLOBJECT").html('Hello, ' + result);
});

// deze communiceert met je functie
$("input[type='submit']").click(function() {
	contract.HIERDENAAMVANJEFUNCTIE($("#HIERNAAMVANJEHTMLOBJECT").val(), function(err, result) {
		console.log(err, result);
	})
});


}