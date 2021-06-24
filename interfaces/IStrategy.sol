pragma solidity ^0.6.12;

interface IStrategy {
    function getFeeDistToken() external view returns (address);

    function lastHarvestTime() external view returns (uint256);

    function rewards() external view returns (address);

    function gauge() external view returns (address);

    function want() external view returns (address);

    function treasury() external view returns (address);

    function deposit() external;

    function depositLocked(uint256 _secs) external;

    function withdrawForSwap(uint256) external returns (uint256);

    function withdraw(address) external;

    function withdraw(uint256) external;

    function withdrawLocked(bytes32 kek_id) external returns (uint256 balance);

    function skim() external;

    function withdrawAll() external returns (uint256);

    function balanceOf() external view returns (uint256);

    function getHarvestable() external view returns (uint256);

    function pairName() external view returns (string memory);

    function harvest() external;

    function setJar(address _jar) external;
}