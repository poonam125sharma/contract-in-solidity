pragma solidity ^0.4.25;

contract HelloWorld {
    address internal owner;
    
    event Hello(string _msg);
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function hello(string _msg) external onlyOwner {
        emit Hello(_msg);
    }
    
    function transferOwnership(address _owner) public onlyOwner {
        owner = _owner;
    }
    
    function displayOwner() public view returns (address) {
        return owner;
    }
}