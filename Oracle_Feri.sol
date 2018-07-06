pragma solidity ^0.4.24;
import "github.com/tadejrola/oracle-solidity/OracleService.sol";

contract Oracle{

    OracleService internal os;
    constructor(){
        os=OracleService(0x0139d0bb168dc38be2d7ce8eeab42531e954a756);
    }
    function api_call(string _apiUrl, string _pathToData, address _caller) internal {
        os.api_call(_apiUrl, _pathToData, _caller);
    }
    
    function get_os_address() view returns (address){
        return address(os);
    }
}