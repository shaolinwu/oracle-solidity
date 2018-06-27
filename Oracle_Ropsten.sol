pragma solidity ^0.4.24;
import "github.com/tadejrola/oracle-solidity/OracleService.sol";

contract PKP_oracle{

    OracleService internal os;
    constructor(){
        os=OracleService(0x09826380ce7fd6fe77ec8651cb60c5beb7be972f);
    }
    function api_call(string _apiUrl, string _pathToData, address _caller) internal {
        os.api_call(_apiUrl, _pathToData, _caller);
    }
}