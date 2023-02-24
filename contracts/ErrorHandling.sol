// SPDX-License-Identifier: UNLICENSED
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

// let instance = await ErrorHandling.deployed()
// instance.testing()
// instance.usingRevert(11)
// instance.usingRevert(5)
contract ErrorHandling {
    uint public j;

    function testing() public {
        assert(j == 0);//0 is default value of uint. We check if its set to that
        j=20;
        assert(j == 20);//This will work and not stop execution
        require(j == 0,"Value is no longer 0. Statements after this aren't executed");

        revert("This won't execute because of the require statement above");
    }
    
    function usingRevert(uint i) public pure {
        if (i <= 10) {
            revert("Input must be greater than 10");
        }
        
    }

}