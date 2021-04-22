pragma solidity >=0.6.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol



contract YourContract{
  // Blog Post 
  // Blog Tittle author date Id etc


struct Article {
  string tittle;
  string content;
  address author;
  uint256 timestamp;
  uint256 id;
}
// create an array of article which would hold user data with there respective id
Article[] public articles;
    // Create your contract body with publish article
function publishArticle(string memory _tittle, string memory _content) public returns(uint256){
  /// user created article with user address content and timestamp with user id
  uint256 myId = articles.length;
  Article memory myArticle = Article(_tittle, _content, msg.sender, now, myId);
  articles.push(myArticle);
  /// Return the id to the users
  return myId;
  
}

}
