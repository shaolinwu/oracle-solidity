pragma solidity ^0.4.24;

contract OracleService{
    
    event API_call(
        uint baggageId,
        string apiUrl,
        string pathToData,
        address caller
    );
    
    function api_call(uint _baggageId, string _apiUrl, string _pathToData, address _sender) public {
        emit API_call(_baggageId, _apiUrl, _pathToData, _sender);
    }
}