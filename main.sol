pragma solidity >=0.7.0 <0.9.0;


contract greatestnum{
 uint a;
 uint b;
 uint c;
 uint d;
 address owner;

 constructor(){
  owner = msg.sender;
  
 }

 modifier onlyOwner{
  require(owner == msg.sender, "only owner has access");
  _;
 }

}