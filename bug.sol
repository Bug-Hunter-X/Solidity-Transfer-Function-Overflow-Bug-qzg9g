```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```

This code has a common bug: it does not check for arithmetic overflow. If `amount` is larger than `balanceOf[msg.sender]`, the subtraction `balanceOf[msg.sender] -= amount` will underflow, resulting in a very large number and potentially allowing the attacker to mint tokens.