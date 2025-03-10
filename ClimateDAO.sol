// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ClimateDAO {
    struct MRVReport {
        string cid;
        uint timestamp;
        address reporter;
    }

    MRVReport[] public reports;

    event ReportSubmitted(address indexed reporter, string cid, uint timestamp);

    function submitReport(string memory _cid) public {
        reports.push(MRVReport({
            cid: _cid,
            timestamp: block.timestamp,
            reporter: msg.sender
        }));
        emit ReportSubmitted(msg.sender, _cid, block.timestamp);
    }

    function getReport(uint index) public view returns (string memory cid, uint timestamp, address reporter) {
        MRVReport memory report = reports[index];
        return (report.cid, report.timestamp, report.reporter);
    }

    function totalReports() public view returns (uint) {
        return reports.length;
    }
}
