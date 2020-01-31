pragma solidity ^0.5.0;
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract MostCoin is ERC20, ERC20Detailed {

  string private _name = "MostCoin";
  string private _symbol = "MOST";
  uint8 private _decimals = 12;
  string[] private _messages;

  address account = msg.sender;
  uint value = 100000000000000000000;

  constructor() ERC20Detailed( _name, _symbol, _decimals) public {
    _mint(account, value);
  }

  function transferWithMessage(address recipient, uint256 amount, string memory message) public returns (bool) {
    _messages.push(message);
    return transfer(recipient, amount);
  }

  function getLastMessage() public returns(string memory){
    return _messages[_messages.length - 1];
  }
  
}
