
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentData {

    // Structure to store student information
    struct Student {
        uint id;
        string name;
        uint rollNo;
        uint marks;
    }

    // Array to store multiple students
    Student[] public students;

    // Event for fallback function
    event FallbackCalled(address sender, uint value);

    // Event for receive function
    event EtherReceived(address sender, uint value);

    // Add student data
    function addStudent(
        uint _id,
        string memory _name,
        uint _rollNo,
        uint _marks
    ) public {
        students.push(
            Student(_id, _name, _rollNo, _marks)
        );
    }

    // Get student details
    function getStudent(uint index)
        public
        view
        returns (uint, string memory, uint, uint)
    {
        require(index < students.length, "Invalid student index");

        Student memory s = students[index];

        return (s.id, s.name, s.rollNo, s.marks);
    }

    // Get total number of students
    function getStudentCount() public view returns (uint) {
        return students.length;
    }

    // Receive ETH directly
    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
    }

    // Fallback function
    fallback() external payable {
        emit FallbackCalled(msg.sender, msg.value);
    }
}
