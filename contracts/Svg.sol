// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";

contract Eshterak {

    function getSvg(uint id) private view returns (string memory) {
        // string memory svg;
        uint256 startDate = subscribers[msg.sender].date;
        uint256 endDate = startDate + plans[id].time;
        uint256 period = plans[id].time / 86400;
        string memory finalSvg = string(
            abi.encodePacked(
                '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="500" height="500" viewBox="0 0 256 256" xml:space="preserve">'
'<defs>'
'<linearGradient id="sw-gradient" x1="0" x2="1" y1="1" y2="0"><stop id="stop1" stop-color="rgba(248, 117, 55, 1)" offset="0%"></stop><stop id="stop2" stop-color="rgba(251, 168, 31, 1)" offset="100%"></stop></linearGradient>'
'</defs>'
'<g style="stroke: none; stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: none; fill-rule: nonzero; opacity: 1;" transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)" >'
	'<path d="M 84.83 72.913 H 5.17 c -2.855 0 -5.17 -2.315 -5.17 -5.17 V 22.257 c 0 -2.855 2.315 -5.17 5.17 -5.17 h 79.66 c 2.855 0 5.17 2.315 5.17 5.17 v 45.485 C 90 70.598 87.685 72.913 84.83 72.913 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: rgb(54,59,56); fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round" />'
	'<path d="M 84.83 17.087 h -1.404 v 23.531 c 0 16.021 -12.987 29.008 -29.008 29.008 H 0.366 c 0.754 1.922 2.615 3.287 4.804 3.287 h 79.66 c 2.855 0 5.17 -2.315 5.17 -5.17 V 22.257 C 90 19.402 87.685 17.087 84.83 17.087 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: rgb(46,50,47); fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round" />'
'</g>'
    '<path fill="url(#sw-gradient)" d="M24.7,-20.2C29,-14.3,27.4,-4.2,25,5.5C22.6,15.2,19.5,24.6,13.7,26.8C7.9,28.9,-0.6,23.8,-8.7,19.4C-16.8,14.9,-24.5,11.2,-29.1,3.2C-33.6,-4.8,-35,-16.9,-29.6,-23C-24.3,-29.1,-12.1,-29.2,-1,-28.5C10.2,-27.7,20.4,-26.1,24.7,-20.2Z" width="100%" height="100%" transform="translate(200 90)" style="transition: all 0.3s ease 0s;" stroke-width="0" stroke="url(#sw-gradient)"></path>'
	'<rect x="17" y="72" width="80" height="20" rx="5" fill="rgba(251, 168, 31, 1)" />'
	'<rect x="17" y="120" width="220" height="20" rx="5" fill="rgb(84,92,86)" />'
	'<rect x="17" y="155" width="70" height="30" rx="8" fill="rgb(84,92,86)" />'
	'<rect x="157" y="155" width="70" height="30" rx="8" fill="rgb(84,92,86)" />'
	'<text x="20" y="68" fill="rgb(174, 181, 177)" font-size="10px" font-family="Helvetica Neue, sans-serif" font-weight= "bold" letter-spacing= "-0.5px" line-height= "1">Creator</text>'
    '<text x="18" y="116" fill="rgb(174, 181, 177)" font-size="10px" font-family="Helvetica Neue, sans-serif" font-weight= "bold" letter-spacing= "-0.5px" line-height= "1">Subscriber</text>'
    '<text id="subscriber" x="20" y="133" fill="rgb(174, 181, 177)" font-size="8.5px" font-family="Courier, monospace">0xa2c67EaC1Cc3DD40441C9f631fb53D3c5BA2eC41</text>'
	'<text x="22" y="166" fill="rgb(174, 181, 177)" font-size="8px" font-family="Lucida Sans, Arial, sans-serif">Start</text>'
	'<text id="start-date" x="22" y="180" fill="rgb(174, 181, 177)" font-size="8px" font-family="Lucida Sans, Arial, sans-serif"></text>'
	'<text x="162" y="166" fill="rgb(174, 181, 177)" font-size="8px" font-family="Lucida Sans, Arial, sans-serif">End</text>'
	'<text id="end-date" x="162" y="180" fill="rgb(174, 181, 177)" font-size="8px" font-family="Lucida Sans, Arial, sans-serif"></text>'
	'<text id="period" x="173" y="90" fill="rgb(54,59,56)" font-size="14px" font-family="Lucida Sans, Arial, sans-serif"> Days</text>'
	'<text id="creator" x="22" y="86" fill="rgb(54,59,56)" font-size="12px" font-family="Lucida Sans, Arial, sans-serif">0xa2c...eC41</text>'
    '<script type="text/javascript">'
	'<![CDATA['
    'let sDate = new Date(',
                startDate,');'
    'let eDate = new Date(',
                endDate,');'
    'document.getElementById("start-date").innerHTML = sDate.toDateString();'
    'document.getElementById("end-date").innerHTML = eDate.toDateString();'
    'document.getElementById("creator").innerHTML = "";'
    'document.getElementById("subscriber").innerHTML = "";'
    'document.getElementById("period").innerHTML =',period,']]>'
    '</script>'
'</svg>')
    );
        console.log("Final Svg: ", string(finalSvg));
        return finalSvg;
    }    

    function uri(uint id)
        public
        correctId(id)
        view
        override
        returns (string memory)
    {
        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            string(
                                abi.encodePacked(
                                    '{"name": "',
                                    string.concat(plans[id].name, Strings.toString(id)),
                                    '", "description": "", "attributes": "", "image":"data:image/svg+xml;base64,',
                                    Base64.encode(bytes(getSvg(id))),
                                    '"}'
                                )
                            )
                        )
                    )
                )
            );
    }

    function tokenSupply(uint id) public correctId(id) view returns(uint) {
        return plans[id].subscribers;
    }

    function tokenPrice(uint id) public correctId(id) view returns(uint) {
        return plans[id].price;
    }

    function tokenTime(uint id) public correctId(id) view returns(uint) {
        return plans[id].time;
    }


    function totalSupply() public view returns(uint) {
        return totalPlans;
    }

    function balance() public view onlyOwner returns (uint) {
        return address(this).balance;
    }

    function withdraw(uint256 amount) external onlyOwner {
        (bool success, ) = payable(owner()).call{value: amount}("");
        require(success, "transfer failed");
    }

}

