pragma solidity ^0.8.9;

contract MarriageToken {
    string public name = "My Hardhat MarriageToken";
    string public symbol = "MHMT";
    uint256 public totalSupply = 1000000;
    address public owner;
    mapping(address => uint256) balances;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    
    // Ajout des noms des conjoints
    string public last_name_spouse1;
    string public last_name_spouse2;

    constructor(string memory _last_name_spouse1, string memory _last_name_spouse2) {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
        // Initialiser les noms des conjoints lors du déploiement du contrat
        last_name_spouse1 = _last_name_spouse1;
        last_name_spouse2 = _last_name_spouse2;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");

        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    // Ajouter des fonctions pour récupérer les noms des conjoints
    function getSpouse1() external view returns (string memory) {
        return last_name_spouse1;
    }

    function getSpouse2() external view returns (string memory) {
        return last_name_spouse2;
    }
}
