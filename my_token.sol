// SPDX-License-Identifier: MIT
pragma solidity >0.8.7;

import"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract my_token is ERC20{
    constructor () ERC20("my_token","m_t")
    {}
    function mint(address owner , uint initvalue)public {
        require(msg.sender==owner,"Only owners can mint tokens");
        _mint(owner,initvalue);
    }
    function transfer(address reciever, uint amount) public virtual override returns (bool) {
        _transfer(_msgSender(), reciever, amount);
        return true;}
        
    function burn(uint amount)public{
        _burn(_msgSender(),amount);
    }}
