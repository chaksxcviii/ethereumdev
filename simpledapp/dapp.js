window.onload = function(){ 

    // hier check op web3
    
    if (typeof web3 !== 'undefined') {
      web3 = new Web3(web3.currentProvider);
    } else {
      web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:8887"));
    }
    
    // hier verwijzingen naar je smart contract
    var contractAddress = '0xd5eDCB1e08249b3f2B8BFe5653F934626945E570';
    var contractABI = [
        {
            "constant": true,
            "inputs": [],
            "name": "name",
            "outputs": [
                {
                    "name": "",
                    "type": "string"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_name",
                    "type": "string"
                }
            ],
            "name": "changeName",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        }
    ];
    
    contract = web3.eth.contract(contractABI).at(contractAddress);
    
    // hier communicatie met je smart contract
    
    
    // deze leest een statevariable uit
    contract.name(function(err, result) {
        
        $('#hellotext').html('Hello, ' + result);
    });
    
    // deze communiceert met je functie
    $("input[type='submit']").click(function() {
        contract.changeName($("#newName").val(), function(err, result) {
            console.log(err, result);
        })
    });
    
    
    }





