pragma solidity ^0.4.23;


interface IPoaNetworkConsensus {
    function addValidator(address, bool) external;
    function finalizeChange() external;
    function removeValidator(address, bool) external;
    function swapValidatorKey(address, address) external;
    function isValidator(address) external view returns(bool);
    function getCurrentValidatorsLength() external view returns(uint256);
    function getPendingList() external view returns(address[]);
    function getValidators() external view returns(address[]);
}


interface IPoaNetworkConsensusForVotingToChange {
    function currentValidators(uint256) external view returns(address);
    function getCurrentValidatorsLength() external view returns(uint256);
}