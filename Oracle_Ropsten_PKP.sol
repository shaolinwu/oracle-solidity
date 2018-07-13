pragma solidity ^0.4.24;
import "github.com/tadejrola/oracle-solidity/OracleService_PKP.sol";

contract Oracle{

    OracleService internal os;

    mapping (address => bool) eligibleCaller;
    constructor(){
        os=OracleService(0x6cb0965e25f6779778479ae398ede3b5755cb3e1);
        eligibleCaller[0x9c21daBc470B1d10AFDBd076C24c70E778A3c5B1]=true;
        eligibleCaller[0x25De25639d74879A537405aD2cF757b91eDC6F61]=true;
        eligibleCaller[0x4621fB95e5e7515f695963d9D3a7785EEd7a4a63]=true;
        eligibleCaller[0x6620A3Fb0a56b72263300293DC684572acd64b52]=true;
        eligibleCaller[0x7d0032A273C2A78D6F47a2f3d8099E8A872132A7]=true;
    }
    function api_call(uint _baggageId, string _apiUrl, string _pathToData, address _caller) internal {
        os.api_call(_baggageId, _apiUrl, _pathToData, _caller);
    }
    
    function get_os_address() view returns (address){
        return address(os);
    }

    function isEligible(address _addr) returns (bool){
        return eligibleCaller[_addr];
    }
}