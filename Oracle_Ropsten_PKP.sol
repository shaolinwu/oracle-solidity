pragma solidity ^0.4.24;
import "github.com/tadejrola/oracle-solidity/OracleService_PKP.sol";

contract Oracle{

    OracleService internal os;
    constructor(){
        os=OracleService(0x6cb0965e25f6779778479ae398ede3b5755cb3e1);
    }
    function api_call(uint _baggageId, string _apiUrl, string _pathToData, address _caller) internal {
        os.api_call(_baggageId, _apiUrl, _pathToData, _caller);
    }
    
    function get_os_address() view returns (address){
        return address(os);
    }
}