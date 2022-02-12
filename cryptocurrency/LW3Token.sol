// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**imports the ERC-20 token standard from OpenZeppelin (OZ), Ethereum security company.
//OZ develops reference contracts for popular smart contract standards*/
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";


/**new contract, named LW3Token, this contract is an instance of ERC20. ERC20 in this case refers to the standard contract we imported from OpenZeppelin.*/
contract LW3Token is ERC20 {

    //a constructor function that is called when the smart contract is first deployed.
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {

        //an internal function that it can only be called by the contract itself
        _mint(msg.sender, 10 * 10 ** 18);
    }
}


//contract address 0x369E71897fe54e0a9Ca08Ac653a22346f75aE797