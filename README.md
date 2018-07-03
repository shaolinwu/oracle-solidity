# Repository Title Goes Here

This is oracle implementation on Ropsten test network. 
We are using web3 on Heroku cloud platform. Easy client implementation.


## How to use on client

```solidity
// code away!

pragma solidity ^0.4.24;
import "github.com/tadejrola/oracle-solidity/Oracle_Ropsten.sol";

contract Client is Oracle{
    
    string public data;
    
    function __callback(string _data){
        require (msg.sender == get_os_address());
        data=_data;
    }
    
    
    //example
    //_apiUrl= "https://api.coinmarketcap.com/v1/ticker/ethereum/"
    //_pathToData= "[0].price_usd"
    function pridobiMojePodatke(string _apiUrl, string _pathToData) public {
        api_call(_apiUrl, _pathToData, address(this));
    }
}

```


## Support

Reach out to me @:

- <a href="https://www.linkedin.com/in/tadej-rola-003a9bb6/" target="_blank">Linkedin</a>
- <a href="http://twitter.com/tadejrola" target="_blank">Twitter</a>

---
