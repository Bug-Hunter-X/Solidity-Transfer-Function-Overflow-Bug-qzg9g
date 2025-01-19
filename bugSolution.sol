```solidity
function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
  require(b <= a, 'SafeMath: subtraction overflow');
  return a - b;
}

function transfer(address to, uint amount) public {
  uint256 balance = balanceOf[msg.sender];
  require(balance >= amount, "Insufficient balance");
  balanceOf[msg.sender] = safeSub(balance, amount);
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```