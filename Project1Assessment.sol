// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AirTrafficControl{
    
    uint[] runwayStatus=[0,0,1,0,1,1,0,0,1];

    //function to show the use of revert() statement
    function contactPilots(bool connection) public pure returns(string memory) {
        if(!connection){
            revert("Unable to connect with the Pilots!");
        }
        return "ATC: Connection established with the Pilots";
    }


    //function to show the use of require() statement
    function clearWeather(uint _windSpeed) public pure returns(string memory){
        require(_windSpeed<35, "Bad weather conditions(>35 knots)...Please reschedule flight!");
        return "Wind Speed is Optimal: Ready to takeoff";
    }

    //function to show the use of assert() statement
    function assignRunway(uint _checkRunway) public view returns (string memory){
        assert(_checkRunway>0 && _checkRunway<9);
        
        if(runwayStatus [_checkRunway-1]== 1){
            return "Runway is Occupied...Please check for clear status on another runway"; 
        }
        else {
            return "Runway is available";
        }   
            
    }
}
