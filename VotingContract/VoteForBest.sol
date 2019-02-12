pragma solidity ^0.4.25;

contract voteForBest {
    uint256 public react;
    uint256 public angular;
    
    function voteReact() public {
        react++;
    }
    
    function voteAngular() public {
        angular++;
    }
    function vote( string _choice ) public {
        require( keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("React")) || keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("Angular")) );
        if( keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("React")) ) {
            react++;
        }else{
            angular++;
        }
    }
}