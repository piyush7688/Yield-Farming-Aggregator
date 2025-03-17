// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract YieldFarmingAggregator {

    // State variables to store project title and description
    string public projectTitle;
    string public projectDescription;

    // Event to emit project details when changed
    event ProjectDetailsUpdated(string title, string description);

    // Constructor to initialize the contract with title and description
    constructor() {
        projectTitle = "Yield Farming Aggregator";
        projectDescription = "Develop a platform that aggregates yield farming opportunities across different DeFi protocols.";
    }

    // Function to get the project title
    function getProjectTitle() public view returns (string memory) {
        return projectTitle;
    }

    // Function to get the project description
    function getProjectDescription() public view returns (string memory) {
        return projectDescription;
    }

    // Function to update project title and description
    function updateProjectDetails(string memory _title, string memory _description) public {
        projectTitle = _title;
        projectDescription = _description;
        emit ProjectDetailsUpdated(_title, _description);
    }
} 
