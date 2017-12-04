pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CAS is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CAS(address _owner)  UpgradeableToken(_owner) {
    name = "CAS";
    symbol = "CAS";
    totalSupply = 510000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}