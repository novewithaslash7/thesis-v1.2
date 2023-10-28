-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 05:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `incorrect_answer_1` varchar(255) NOT NULL,
  `incorrect_answer_2` varchar(255) NOT NULL,
  `incorrect_answer_3` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `curriculum` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `incorrect_answer_1`, `incorrect_answer_2`, `incorrect_answer_3`, `correct_answer`, `curriculum`, `year`) VALUES
(6, 'The syntax for declaring INC instruction is.', '.data', 'data. INC  ', 'DEC. MOV', 'INC destination', 'BS Information Technology', '1'),
(7, 'The syntax for declaring DEC instruction is.', 'DEC. MOV	', 'DEC destination, source    ', 'INC destination', 'DEC destination	', 'BS Information Technology', '1'),
(8, 'The syntax format of the DIV/IDIV instruction is.', 'DIV/DIV divisor', 'DIV/LDIV divisor  ', 'DVI/DLVI divisor', 'DIV/IDIV divisor	', 'BS Information Technology', '1'),
(9, 'The syntax for the MUL/IMUL instructions is.', 'MUL/MUL Multiplier', 'MOL/IMUL Mutiplier ', 'MIUL/MOL Multiplier', 'MUL/IMUL Multiplier', 'BS Information Technology', '1'),
(10, 'It is used to input/output and most arithmetic instructions.', 'BX', 'DX ', 'LX', 'AX', 'BS Information Technology', '1'),
(11, 'What is the definition of a project?', 'a long-term endeavor undertaken to create a unique product, service, or result', 'a repetitive endeavor undertaken to create a unique product, service, or result', 'a temporary endeavor undertaken to create a common product, service, or result', 'a temporary endeavor undertaken to create a unique product, service, or result', 'BS Information Technology', '1'),
(12, 'What type of resources are required for a project?', 'Intellectual resources only ', 'Physical resources only ', 'Financial resources only', 'People, hardware, software, other assets', 'BS Information Technology', '1'),
(13, 'Which phase of the project life cycle involves analyzing business needs and reviewing current operation?', 'Planning and design 	', 'Launching and implementation	', 'Closure', 'Initiation', 'BS Information Technology', '1'),
(14, 'What role does a project manager play in decisional responsibilities?', 'Handling disruptions and negotiating interpretations', 'Monitoring project performance and disseminating information', 'Leading the project team and negotiating contracts', 'Allocating resources and adjusting project plans', 'BS Information Technology', '1'),
(15, 'Which area describes the analysis of business needs and the review of current operations?', 'Conceptual design of the operation of the final product', 'Reviewing the current operations', 'Financial analysis of costs and benefits', 'Analyzing the business needs/requirements', 'BS Information Technology', '1'),
(16, 'What is the purpose of the waterfall model in software development?', 'To address the limitations of other software development models', 'To introduce iterations and incremental development in software development', 'To allow for flexibility in adapting to changing requirements and technology', 'To organize activities in a predefined order to achieve a desirable end', 'BS Information Technology', '1'),
(17, 'What is domain analysis in software development?', 'Analyzing the design and architecture of the software system', 'Analyzing the specific requirements of users for the software system', 'Analyzing the performance and scalability of the software system', 'Analyzing and understanding the specific area or industry for which the software is being developed', 'BS Information Technology', '1'),
(18, 'Which programming language is often used for developing Android mobile applications?', 'Swift', 'Python', 'C#', 'Java', 'BS Information Technology', '1'),
(19, 'What does CPU stand for in the context of computer hardware?', 'Computer Personal Unit', 'Central Power Unit', 'Central Peripheral Unit', 'Central Processing Unit', 'BS Information Technology', '1'),
(20, 'What does the acronym \"URL\" stand for in web technology?', 'Universal Resource Locator', 'Unified Resource Locator', 'Unrestricted Resource Locator', 'Uniform Resource Locator', 'BS Information Technology', '1'),
(21, 'Which of the following is a popular open-source content management system (CMS)?', 'Microsoft Word', 'Adobe Photoshop', 'Microsoft Excel', 'WordPress', 'BS Information Technology', '1'),
(22, 'In networking, what does \"LAN\" typically stand for?', 'Large Area Network', 'Longitudinal Access Network', 'Low-cost Access Network', 'Local Area Network', 'BS Information Technology', '1'),
(23, 'What is the primary function of a router in a computer network?', 'Send emails', 'Play multimedia files', 'Create and edit documents', 'Switch data packets between networks', 'BS Information Technology', '1'),
(24, 'Which data storage technology uses a combination of spinning disks and flash memory?', 'HDD (Hard Disk Drive)', 'USB Flash Drive', 'CD-ROM', 'SSD (Solid State Drive)', 'BS Information Technology', '1'),
(25, 'What is the purpose of an operating system?', 'Storing and organizing data', 'Performing complex mathematical calculations', 'Creating web applications', 'Managing hardware resources and providing user interfaces', 'BS Information Technology', '1'),
(26, 'Which protocol is commonly used for sending and receiving email messages?', 'HTTP', 'FTP', 'UDP', 'SMTP', 'BS Information Technology', '1'),
(27, 'What does \"HTML\" stand for in the context of web development?', 'High Technology Multimedia Language', 'Hyperlink and Text Management Language', 'Hardware Testing and Maintenance Language', 'Hyper Text Markup Language', 'BS Information Technology', '1'),
(28, 'Which of the following programming languages is primarily used for web development and is known for its simplicity and readability?', 'JavaScript', 'C++', 'Pascal', 'Ruby', 'BS Information Technology', '1'),
(29, 'What is the purpose of a firewall in network security?', 'To block all incoming and outgoing network traffic', 'To accelerate network performance', 'To manage software licenses', 'To prevent unauthorized access and protect against security threats', 'BS Information Technology', '1'),
(30, 'In the context of data storage, what does \"RAID\" stand for?', 'Random Access Inexpensive Disk', 'Rapid Access and Integrated Data', 'Remote Access to Intranet Devices', 'Redundant Array of Independent Disks', 'BS Information Technology', '1'),
(31, 'Which technology is used to identify and authenticate a user based on their physical characteristics, such as fingerprints or facial features?', 'GPS', 'OCR', 'RFID', 'Biometrics', 'BS Information Technology', '1'),
(32, 'What does the acronym \"VPN\" stand for in the context of network security and privacy?', 'Very Private Network', 'Visual Personal Network', 'Verified Public Network', 'Virtual Private Network', 'BS Information Technology', '1'),
(33, 'Which of the following is not a type of cloud computing service model?', 'Infrastructure as a Service (IaaS)', 'Software as a Service (SaaS)', 'Platform as a Service (PaaS)', 'Hyperlink as a Service (HaaS)', 'BS Information Technology', '1'),
(34, 'What does \"IoT\" stand for in the context of technology and networking?', 'Input-Output Technology', 'Intranet of Tools', 'Information on Telecommunications', 'Internet of Things', 'BS Information Technology', '1'),
(35, 'Which programming paradigm emphasizes the use of objects and classes for software design?', 'Functional programming', 'Procedural programming', 'Imperative programming', 'Object-oriented programming', 'BS Information Technology', '1'),
(36, 'In web development, which programming language is typically used for server-side scripting?', 'HTML', 'CSS', 'JavaScript', 'PHP', 'BS Information Technology', '1'),
(37, 'What is the term for software that appears to be legitimate but performs malicious actions when executed?', 'Adware', 'Spyware', 'Ransomware', 'Trojan Horse', 'BS Information Technology', '1'),
(38, 'What does \"CPU clock speed\" measure in a computer\'s central processing unit?', 'The number of CPU cores', 'The amount of cache memory', 'The CPU\'s physical size', 'The speed at which instructions are executed', 'BS Information Technology', '1'),
(39, 'Which of the following is a widely used version control system for tracking changes in source code during software development?', 'FTP', 'SQL', 'HTTP', 'Git', 'BS Information Technology', '1'),
(40, 'What technology is used to store and manage data in a structured format, allowing for efficient querying and retrieval?', 'File System', 'Web Browser', 'Email Client', 'Relational Database', 'BS Information Technology', '1'),
(41, 'In computer networking, what does \"DNS\" stand for?', 'Data Network Security', 'Distributed Network Server', 'Digital Network Service', 'Domain Name System', 'BS Information Technology', '1'),
(42, 'Which of the following is a common software development methodology that emphasizes iterative and incremental development?', 'Waterfall', 'Spiral', 'V-Model', 'Agile', 'BS Information Technology', '1'),
(43, 'What does \"HTML\" stand for in the context of web development?', 'High Technology Multimedia Language', 'Hyperlink and Text Management Language', 'Hardware Testing and Maintenance Language', 'Hyper Text Markup Language', 'BS Information Technology', '1'),
(44, 'Which protocol is used for secure communication over a computer network, often seen in HTTPS for secure web browsing?', 'HTTP', 'TCP', 'FTP', 'SSL/TLS', 'BS Information Technology', '1'),
(45, 'What technology allows multiple users to interact in a shared online environment, often used for real-time collaboration and communication?', 'VR (Virtual Reality)', 'AI (Artificial Intelligence)', 'Social Media', 'VoIP (Voice over Internet Protocol)', 'BS Information Technology', '1'),
(46, 'In software development, what does \"IDE\" stand for?', 'Interactive Design Environment', 'Internet Database Engine', 'International Development Entity', 'Integrated Development Environment', 'BS Information Technology', '1'),
(47, 'Which type of software testing is performed to ensure that individual units or components of a software application function correctly?', 'System testing', 'Integration testing', 'Acceptance testing', 'Unit testing', 'BS Information Technology', '1'),
(48, 'What is the primary purpose of the Domain Name System (DNS) in computer networking?', 'To encrypt network traffic', 'To secure email communication', 'To manage network hardware', 'To map domain names to IP addresses', 'BS Information Technology', '1'),
(49, 'Which networking protocol is used to retrieve email from a mail server to a mail client, allowing users to access their emails?', 'SMTP (Simple Mail Transfer Protocol)', 'FTP (File Transfer Protocol)', 'HTTP (Hypertext Transfer Protocol) ', 'POP3 (Post Office Protocol)', 'BS Information Technology', '1'),
(50, 'In the OSI model, which layer is responsible for routing and forwarding data packets between different networks?', 'Physical Layer', 'Data Link Layer', 'Transport Layer', 'Network Layer', 'BS Information Technology', '1'),
(51, 'What is the purpose of a firewall in network security?', 'To enhance network speed', 'To create virtual private networks (VPNs)', 'To provide web hosting services', 'To protect a network from unauthorized access and threats', 'BS Information Technology', '1'),
(52, 'In a wireless network, what technology is used to encrypt data for secure communication?', 'HTTP', 'SSL/TLS', 'DNS', 'WPA2 (Wi-Fi Protected Access 2)', 'BS Information Technology', '1'),
(53, 'What is the purpose of NAT (Network Address Translation) in a home router or gateway device?', 'To manage network hardware', 'To secure email communication', 'To encrypt network traffic', 'To map private IP addresses to a single public IP address', 'BS Information Technology', '1'),
(54, 'In the context of network communication, what does \"LAN\" stand for?', 'Local Access Network', 'Long Area Network', 'Limited Area Network', 'Local Area Network', 'BS Information Technology', '1'),
(55, 'Which protocol is commonly used for secure remote login and file transfer over an unsecured network?', 'FTP', 'HTTP', 'SMTP', 'SSH (Secure Shell)', 'BS Information Technology', '1'),
(56, 'What is the primary role of a router in a computer network?', 'To manage and organize data in databases', 'To enhance network speed', 'To filter and control network traffic', 'To connect multiple networks and route data between them', 'BS Information Technology', '1'),
(57, 'What does the term \"IPv6\" represent in networking?', 'Intranet Virtualization for Enhanced Connectivity', 'Internet Verification for Error-free Transmission', 'Internet Video Streaming Service', 'Internet Protocol Version 6', 'BS Information Technology', '1'),
(58, 'Which of the following is not a commonly used routing protocol in computer networking?', 'OSPF (Open Shortest Path First)', 'BGP (Border Gateway Protocol)', 'RIP (Routing Information Protocol)', 'HTTP (Hypertext Transfer Protocol)', 'BS Information Technology', '1'),
(59, 'What is the purpose of a MAC address in networking?', 'To route data between networks', 'To encrypt network traffic', 'To assign IP addresses dynamically', 'To uniquely identify a device on a network', 'BS Information Technology', '1'),
(60, 'Which network topology connects all devices in a linear fashion, and if one device fails, the entire network is affected?', 'Star', 'Ring', 'Mesh', 'Bus', 'BS Information Technology', '1'),
(61, 'What does \"VoIP\" stand for in the context of communication technology?', 'Virtual Online Internet Protocol', 'Video over Internet Protocol', 'Virtual Office Information Process', 'Voice over Internet Protocol', 'BS Information Technology', '1'),
(62, 'In a computer network, what is the purpose of the subnet mask?', 'To identify the location of a device on the network', 'To encrypt data for secure transmission', 'To filter and control network traffic', 'To define the range of IP addresses within a network', 'BS Information Technology', '1'),
(63, 'What is the primary function of a modem in networking?', 'To filter and control network traffic', 'To provide wireless connectivity', 'To manage network hardware', 'To convert digital data to analog for transmission over analog communication lines', 'BS Information Technology', '1'),
(64, 'In the context of wireless networking, what does \"SSID\" stand for?', 'Secure Signal Identifier', 'Standard Signal Descriptor', 'Secure Socket Directory', 'Service Set Identifier', 'BS Information Technology', '1'),
(65, 'In the context of wireless networking, what does \"SSID\" stand for?', 'Secure Signal Identifier', 'Standard Signal Descriptor', 'Secure Socket Directory', 'Service Set Identifier', 'BS Information Technology', '1'),
(66, 'What does \"LAN\" stand for in the context of networking?', 'Local Access Network', 'Long Area Network', 'Limited Area Network', 'Local Area Network', 'BS Information Technology', '2'),
(67, 'What is the primary purpose of a proxy server in networking?', 'To route data between networks', 'To encrypt network traffic', 'To enhance network speed', 'To act as an intermediary between a client and a server', 'BS Information Technology', '2'),
(68, 'Which network protocol is commonly used for secure and encrypted web communication, often indicated by \"https://\" in a URL?', 'HTTP', 'SMTP', 'TCP/IP', 'HTTPS (HTTP Secure)', 'BS Information Technology', '2'),
(69, 'In object-oriented programming, what is encapsulation?', 'A way to ensure that code can run on any platform', 'A method for sorting data in ascending order', 'A process for debugging code', 'A mechanism to limit access to certain parts of an object', 'BS Information Technology', '2'),
(70, 'What does the term \"polymorphism\" refer to in programming?', 'The ability to declare multiple variables with the same name', 'The process of defining a class', 'A method for database querying', 'The ability of an object to take on many forms', 'BS Information Technology', '2'),
(71, 'What is the purpose of an \"if-else\" statement in programming?', 'To define a loop', 'To declare a variable', 'To store data in an array', 'To conditionally execute code based on a Boolean expression', 'BS Information Technology', '2'),
(72, 'Which of the following is not a commonly used programming language?', 'Java', 'Python', 'C++', 'HTML', 'BS Information Technology', '2'),
(73, 'In programming, what does \"DRY\" stand for when referring to coding principles?', 'Digital Record Yield', 'Data Retrieval Yearly', 'Define, Refactor, Yield', 'Don\'t Repeat Yourself', 'BS Information Technology', '2'),
(74, 'What is the primary purpose of a \"for\" loop in programming?', 'To declare variables', 'To define a class', 'To store data in a database', 'To execute a block of code repeatedly while a condition is true', 'BS Information Technology', '2'),
(75, 'In programming, what is a \"function\"?', 'A reserved keyword', 'A data structure for storing information', 'A type of error message', 'A block of code that can be called and executed', 'BS Information Technology', '2'),
(76, 'What does the term \"bug\" mean in the context of programming?', 'A programming error or flaw that causes unexpected behavior', 'A type of data structure', 'A file extension', 'A small insect', 'BS Information Technology', '2'),
(77, 'Which programming language is often used for web development and is known for its versatility and ease of use?', 'Java', 'C#', 'COBOL', 'PHP', 'BS Information Technology', '2'),
(78, 'What is the purpose of a \"try-catch\" block in programming?', 'To define a loop', 'To execute a block of code repeatedly', 'To declare a variable', 'To catch exceptions and handle errors gracefully', 'BS Information Technology', '2'),
(79, 'What is the primary function of a computer?', 'To store and retrieve information', 'To communicate with other devices', 'To perform calculations', 'To process and manipulate data', 'BS Information Technology', '2'),
(80, 'What is the difference between a LAN and a WAN?', 'A LAN is a wireless network, while a WAN is a wired network', 'A LAN is a network that uses fiber optic cables, while a WAN is a network that uses copper wires', 'A LAN is a network that uses a single computer, while a WAN is a network that uses multiple computers', 'A LAN is a local network, while a WAN is a wide area network', 'BS Information Technology', '2'),
(81, 'What is the purpose of a firewall?', 'To protect a computer from viruses and malware', 'To encrypt data transmitted over a network', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'BS Information Technology', '2'),
(82, 'What is the difference between a hard drive and a solid-state drive (SSD)?', 'A hard drive uses spinning disks to store data, while an SSD uses flash memory to store data', 'A hard drive is more expensive than an SSD', 'A hard drive is less reliable than an SSD', 'A hard drive is slower than an SSD', 'BS Information Technology', '2'),
(83, 'What is the purpose of an operating system?', 'To provide a user interface for interacting with the computer', 'To store and retrieve information', 'To process and manipulate data', 'To manage hardware resources and software applications', 'BS Information Technology', '2'),
(84, 'What is the difference between a router and a switch?', ' A router is used for wired networks, while a switch is used for wireless networks', 'A router is used for local networks, while a switch is used for wide area networks', 'A router is used for networks that use the Internet Protocol (IP), while a switch is used for networks that use the Media Access Control (MAC) protocol', 'A router connects multiple networks together, while a switch connects multiple devices on a single network', 'BS Information Technology', '2'),
(85, 'What is the purpose of a virtual private network (VPN)?', 'To encrypt data transmitted over the internet', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'To provide a secure connection to a remote network', 'BS Information Technology', '2'),
(86, ' What is the difference between a static IP address and a dynamic IP address?', 'A static IP address is an IP address that is used by a router, while a dynamic IP address is an IP address that is used by a device', 'A static IP address is an IP address that is used by a device on a local network, while a dynamic IP address is an IP address that is used by a device on a wide area network', 'A static IP address is an IP address that is used by a device on a wired network, while a dynamic IP address is an IP address that is used by a device on a wireless network', 'A static IP address is an IP address that is manually assigned to a device, while a dynamic IP address is an IP address that is automatically assigned by a DHCP server', 'BS Information Technology', '2'),
(87, 'What is the purpose of a domain name system (DNS)?', 'To encrypt data transmitted over the internet', 'To provide a secure connection to a remote network', 'To prevent unauthorized access to a network', 'To translate human-readable domain names into machine-readable IP addresses', 'BS Information Technology', '2'),
(88, 'What is the difference between a LAN and a WAN?', ' LAN is a wireless network, while a WAN is a wired network', 'A LAN is a network that uses fiber optic cables, while a WAN is a network that uses copper wires', 'A LAN is a network that uses a single computer, while a WAN is a network that uses multiple computers', 'A LAN is a local network, while a WAN is a wide area network', 'BS Information Technology', '2'),
(89, 'What is the purpose of a firewall?', 'To protect a computer from viruses and malware', 'To encrypt data transmitted over a network', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'BS Information Technology', '2'),
(90, 'What is the difference between a hard drive and a solid-state drive (SSD)?', 'A hard drive is slower than an SSD', 'A hard drive is more expensive than an SSD', 'A hard drive is less reliable than an SSD', 'A hard drive uses spinning disks to store data, while an SSD uses flash memory to store data', 'BS Information Technology', '2'),
(91, 'What is the purpose of an operating system?', 'To provide a user interface for interacting with the computer', 'To store and retrieve information', 'To process and manipulate data', 'To manage hardware resources and software applications', 'BS Information Technology', '2'),
(92, 'What is the difference between a router and a switch?', 'A router is used for wired networks, while a switch is used for wireless networks', 'A router is used for local networks, while a switch is used for wide area networks', 'A router is used for networks that use the Internet Protocol (IP), while a switch is used for networks that use the Media Access Control (MAC) protocol', 'A router connects multiple networks together, while a switch connects multiple devices on a single network', 'BS Information Technology', '2'),
(93, 'What is the purpose of a virtual private network (VPN)?', 'To encrypt data transmitted over the internet', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'To provide a secure connection to a remote network', 'BS Information Technology', '2'),
(94, 'What is the difference between a static IP address and a dynamic IP address?', 'A static IP address is an IP address that is used by a router, while a dynamic IP address is an IP address that is used by a device', 'A static IP address is an IP address that is used by a device on a local network, while a dynamic IP address is an IP address that is used by a device on a wide area network', 'A static IP address is an IP address that is used by a device on a wired network, while a dynamic IP address is an IP address that is used by a device on a wireless network', ' A static IP address is an IP address that is manually assigned to a device, while a dynamic IP address is an IP address that is automatically assigned by a DHCP server', 'BS Information Technology', '2'),
(95, 'What is the purpose of a domain name system (DNS)?', 'To encrypt data transmitted over the internet', 'To provide a secure connection to a remote network', 'To prevent unauthorized access to a network', 'To translate human-readable domain names into machine-readable IP addresses', 'BS Information Technology', '2'),
(96, 'What is the difference between a LAN and a WAN?', 'A LAN is a wireless network, while a WAN is a wired network', 'A LAN is a network that uses fiber optic cables, while a WAN is a network that uses copper wires', 'A LAN is a network that uses a single computer, while a WAN is a network that uses multiple computers', 'A LAN is a local network, while a WAN is a wide area network', 'BS Information Technology', '2'),
(97, 'What is the purpose of a firewall?', 'To protect a computer from viruses and malware', 'To encrypt data transmitted over a network', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'BS Information Technology', '2'),
(98, 'What is the difference between a hard drive and a solid-state drive (SSD)?', 'A hard drive is slower than an SSD', 'A hard drive is more expensive than an SSD', 'A hard drive is less reliable than an SSD', 'A hard drive uses spinning disks to store data, while an SSD uses flash memory to store data', 'BS Information Technology', '2'),
(99, 'What is the purpose of an operating system?', 'To provide a user interface for interacting with the computer', 'To store and retrieve information', 'To process and manipulate data', 'To manage hardware resources and software applications', 'BS Information Technology', '2'),
(100, 'What is the difference between a router and a switch?', 'A router is used for wired networks, while a switch is used for wireless networks', 'A router is used for local networks, while a switch is used for wide area networks', 'A router is used for networks that use the Internet Protocol (IP), while a switch is used for networks that use the Media Access Control (MAC) protocol', 'A router connects multiple networks together, while a switch connects multiple devices on a single network', 'BS Information Technology', '2'),
(101, ' What is the purpose of a virtual private network (VPN)?', 'To encrypt data transmitted over the internet', 'To compress data stored on a computer', 'To prevent unauthorized access to a network', 'To provide a secure connection to a remote network', 'BS Information Technology', '2'),
(102, ' What is the difference between a static IP address and a dynamic IP address?', 'A static IP address is an IP address that is used by a router, while a dynamic IP address is an IP address that is used by a device', 'A static IP address is an IP address that is used by a device on a local network, while a dynamic IP address is an IP address that is used by a device on a wide area network', 'A static IP address is an IP address that is used by a device on a wired network, while a dynamic IP address is an IP address that is used by a device on a wireless network', 'A static IP address is an IP address that is manually assigned to a device, while a dynamic IP address is an IP address that is automatically assigned by a DHCP server', 'BS Information Technology', '2'),
(103, 'What is the purpose of a domain name system (DNS)?', 'To encrypt data transmitted over the internet', 'To provide a secure connection to a remote network', 'To prevent unauthorized access to a network', 'To translate human-readable domain names into machine-readable IP addresses', 'BS Information Technology', '2'),
(104, 'What is the difference between a LAN and a WAN?', 'A LAN is a wireless network, while a WAN is a wired network', 'A LAN is a network that uses fiber optic cables, while a WAN is a network that uses copper wires', 'A LAN is a network that uses a single computer, while a WAN is a network that uses multiple computers', 'A LAN is a local network, while a WAN is a wide area network', 'BS Information Technology', '2'),
(105, 'Which computer component is often referred to as the \"brain\" of the computer and is responsible for processing instructions?', 'Hard Drive', 'Graphics Processing Unit (GPU)', 'Random Access Memory (RAM)', 'Central Processing Unit (CPU)', 'BS Information Technology', '2'),
(106, 'What is the primary function of Random Access Memory (RAM) in a computer?', 'Long-term storage of data and files', 'Processing graphics and images', 'Cooling the computer system', 'Temporary storage of data and program instructions for quick access', 'BS Information Technology', '2'),
(107, 'Which component stores the computer\'s operating system and data for the long term, even when the computer is powered off?', 'CPU', 'Power Supply Unit (PSU)', 'Optical Drive', 'Hard Drive', 'BS Information Technology', '2'),
(108, 'What is the main purpose of a Graphics Processing Unit (GPU) in a computer?', 'Storing software applications', 'Displaying text on the monitor', 'Managing network connections', 'Rendering graphics and images for visual output', 'BS Information Technology', '2'),
(109, 'Which computer component supplies power to all the other parts of the computer?', 'RAM', 'Motherboard', 'Optical Drive', 'Power Supply Unit (PSU)', 'BS Information Technology', '2'),
(110, 'The motherboard of a computer is often considered its:', '\"Brain\"', '\"Heart\"', '\"Nervous system\"', '\"Skeleton\"', 'BS Information Technology', '2'),
(111, 'What type of computer component is responsible for enabling communication between different hardware devices?', 'Sound card', 'Graphics card', 'Power Supply Unit (PSU)', 'Network card', 'BS Information Technology', '2'),
(112, 'hich component is responsible for producing audio output from a computer?', 'Hard Drive', 'CPU', 'Optical Drive', 'Sound card', 'BS Information Technology', '2'),
(113, 'Which computer component is commonly used to read and write data from optical discs, such as CDs and DVDs?', 'Monitor', 'Motherboard', 'CPU', 'Optical Drive', 'BS Information Technology', '2'),
(114, 'Which component is responsible for converting electrical signals into visual output on the computer monitor?', 'CPU', 'RAM', 'Hard Drive', 'Monitor', 'BS Information Technology', '2'),
(115, 'What is the primary function of a computer\'s motherboard?', 'Processing data and instructions', 'Storing files and documents', 'Providing power to the computer', 'Connecting and coordinating other hardware components', 'BS Information Technology', '2'),
(116, 'Which component is responsible for providing temporary data storage and is faster than a hard drive but smaller in capacity?', 'Hard Drive', 'Central Processing Unit (CPU)', 'Optical Drive', 'Solid-State Drive (SSD)', 'BS Information Technology', '2'),
(117, 'Which component allows a computer to connect to the internet and other devices over a network?', 'Modem', 'Router', 'Sound card', 'Network Interface Card (NIC)', 'BS Information Technology', '2'),
(118, 'What is the main function of the power supply unit (PSU) in a computer?', 'Processing data', 'Cooling the system', 'Displaying images on the monitor', 'Providing electrical power to all components', 'BS Information Technology', '2'),
(119, 'Which component is responsible for reading and writing data to removable storage media, such as USB drives and memory cards?', 'Network card', 'Sound card', 'USB hub', 'Optical drive', 'BS Information Technology', '2'),
(120, 'What is the purpose of a cooling system, such as a fan or heatsink, in a computer?', 'To provide electrical power to the computer', 'To control network connections', 'To display graphics on the monitor', 'To prevent overheating and keep components at a safe temperature', 'BS Information Technology', '2'),
(121, 'Which component is responsible for converting digital signals into analog signals for output to external speakers or headphones?', 'CPU', 'Network card', 'Graphics card', 'Sound card', 'BS Information Technology', '2'),
(122, 'What is the primary function of a video card or graphics card in a computer?', 'Reading and writing data to optical discs', 'Managing network connections', 'Supplying power to other components', 'Processing and rendering images and videos', 'BS Information Technology', '2'),
(123, 'Which component is responsible for managing and storing passwords, security keys, and other authentication information?', 'Hard Drive', 'SSD', 'Optical Drive', 'Trusted Platform Module (TPM)', 'BS Information Technology', '2'),
(124, 'What is the primary function of a UPS (Uninterruptible Power Supply) in a computer setup?', 'To provide internet connectivity', 'To cool the CPU', 'To scan for viruses and malware', 'To protect against power interruptions and provide a backup power source', 'BS Information Technology', '2'),
(125, 'What does CPU stand for in the context of computer components?', 'Computer Power Unit', 'Central Program Unit', 'Computer Processing Unit', 'Central Processing Unit', 'BS Information Technology', '2'),
(126, 'What is the symbol for (Not Equal to).', '==', '<>', '<=', '>=', 'BS Information Systems', '1'),
(127, 'What is the Arithmetic Operator for division?', '%	', 'div', '\\', '/', 'BS Information Systems', '1'),
(128, 'What is the Logical Operator for Negates truth?', 'For', 'And', 'At', 'Not', 'BS Information Systems', '1'),
(129, 'What is the Style Value of VbYesNo?', '2', '1', '3', '4', 'BS Information Systems', '1'),
(130, 'What is the primary function of an information system?', 'Word processing', 'Communication', 'All of the above', 'Data processing', 'BS Information Systems', '1'),
(131, 'Which of the following is not a component of an information system?', 'Hardware', 'Software', 'People', 'Electricity', 'BS Information Systems', '1'),
(132, 'What does the acronym \"IT\" stand for?', 'Internet Technology', 'Industrial Technology', 'Intelligent Technology', 'Information Technology', 'BS Information Systems', '1'),
(133, 'What is the purpose of a database management system (DBMS)?', 'To manage hardware components', 'To create websites', 'To encrypt data', 'To organize and store data', 'BS Information Systems', '1'),
(134, 'Which type of information system helps managers make strategic decisions by providing data analysis and reporting?', 'Transaction processing system (TPS)', 'Expert system', 'Management information system (MIS)', 'Decision support system (DSS)', 'BS Information Systems', '1'),
(135, 'Which of the following is a characteristic of a well-designed information system?', 'High cost', 'Inefficiency', 'Limited accessibility', 'Scalability', 'BS Information Systems', '1'),
(136, 'What is the role of a firewall in information security?', 'Enhancing data storage', 'Managing email accounts', 'Running software updates', 'Protecting against unauthorized access', 'BS Information Systems', '1'),
(137, 'What is the main purpose of data mining in an information system?', 'To create data backups', 'To install software updates', 'To manage hardware components', 'To extract valuable information from data', 'BS Information Systems', '1'),
(138, 'Which type of information system is responsible for handling day-to-day operational tasks?', 'Executive support system (ESS)', 'Knowledge management system (KMS)', 'Geographic information system (GIS)', 'Transaction processing system (TPS)', 'BS Information Systems', '1'),
(139, 'What does CRM stand for in the context of information systems?', 'Central Resource Management', 'Computerized Reporting Mechanism', 'Customer Record Management', 'Customer Relationship Management', 'BS Information Systems', '1'),
(140, 'What is the primary purpose of an Enterprise Resource Planning (ERP) system?', 'Managing customer relationships', 'Conducting market research', 'Creating marketing campaigns', 'Automating financial and operational processes', 'BS Information Systems', '1'),
(141, 'Which of the following is a characteristic of a relational database management system (RDBMS)?', 'Stores data in an unstructured manner', 'Supports only numeric data types', 'Cannot perform data queries', 'Organizes data into tables with defined relationships', 'BS Information Systems', '1'),
(142, 'What does the term \"Big Data\" refer to in the context of information systems?', 'Extremely large physical data storage devices', 'Data that is too large to be processed by computers', 'Data that is too small to be useful', 'Large and complex datasets that require advanced processing techniques', 'BS Information Systems', '1'),
(143, 'In the context of information security, what is the purpose of encryption?', 'Hiding data from authorized users', 'Increasing the speed of data transmission', 'Complicating data storage', 'Protecting data from unauthorized access', 'BS Information Systems', '1'),
(144, 'What is the role of a Content Management System (CMS) in information systems?', 'Managing hardware components', 'Creating marketing content', 'Securing network connections', 'Organizing and publishing digital content', 'BS Information Systems', '1'),
(145, 'Which of the following is a type of decision-making information system that uses predefined algorithms and rules to solve specific problems?', 'Decision support system (DSS)', 'Management information system (MIS)', 'Transaction processing system (TPS)', 'Expert system', 'BS Information Systems', '1'),
(146, 'What is the purpose of a Virtual Private Network (VPN) in information systems?', 'Enhancing computer performance', 'Facilitating online gaming', 'Managing email accounts', 'Providing secure and private communication over the internet', 'BS Information Systems', '1'),
(147, 'Which of the following best describes the concept of Cloud Computing?', 'Physical storage of data in local servers', 'Offline data storage on personal computers', 'Using USB drives for data storage', 'Storing data in a centralized data center', 'BS Information Systems', '1'),
(148, 'What is the purpose of a Business Intelligence (BI) system in an organization?', 'To manage human resources', 'To support routine operational tasks', 'To facilitate project management', 'To provide data analysis and reporting for decision-making', 'BS Information Systems', '1'),
(149, 'In the context of information systems, what is the primary function of a Data Warehouse?', 'To host websites and web applications', 'To manage hardware components', 'To facilitate real-time data processing', 'To store historical data for analysis and reporting', 'BS Information Systems', '1'),
(150, 'What does the abbreviation \"URL\" stand for?', 'Unified Resource Link', 'Uniform Request Locator', 'Unified Retrieval Link', 'Universal Resource Locator', 'BS Information Systems', '1'),
(151, 'Which type of software is designed to perform a specific task, such as word processing or spreadsheet calculations?', 'Operating system', 'Hardware', 'System software', 'Application software', 'BS Information Systems', '1'),
(152, 'Which device is commonly used for the input of data into a computer system?', 'Monitor', 'Printer', 'Speaker', 'Keyboard', 'BS Information Systems', '1'),
(153, 'What is the primary function of a modem in computer networking?', 'To store data on a hard drive', 'To display web pages', 'To protect against malware', 'To convert digital data to analog signals for transmission', 'BS Information Systems', '1'),
(154, 'Which of the following file extensions typically represents a video file?', '.doc', '.jpg', '.pdf', '.mp4', 'BS Information Systems', '1'),
(155, 'What is the main purpose of a web browser?', 'To send and receive emails', 'To manage computer hardware', 'To create spreadsheets', 'To navigate and display web pages', 'BS Information Systems', '1'),
(156, 'What is the term for a small, portable storage device often used to transfer data between computers?', 'USB cable', 'Ethernet cable', 'Power cord', 'Flash drive', 'BS Information Systems', '1'),
(157, 'Which of the following is an example of cloud-based storage and file-sharing service?', 'Microsoft Word', 'Windows Explorer', 'Adobe Photoshop', 'Dropbox', 'BS Information Systems', '1'),
(158, 'What is the primary role of an operating system in a computer?', 'To perform mathematical calculations', 'To browse the internet', 'To create databases', 'To run applications and manage hardware', 'BS Information Systems', '1'),
(159, 'Which of the following is not a common type of computer malware?', 'Virus', 'Spam', 'Trojan Horse', 'Spreadsheet', 'BS Information Systems', '1'),
(160, 'What is the primary goal of Enterprise Architecture (EA)?', 'Developing software applications', 'Managing human resources', 'Enhancing customer service', 'Ensuring alignment between business and IT strategies', 'BS Information Systems', '1'),
(161, 'Which framework is commonly used for developing and implementing Enterprise Architecture?', 'ITIL (Information Technology Infrastructure Library)', 'SCRUM', 'COBIT (Control Objectives for Information and Related Technologies)', 'TOGAF (The Open Group Architecture Framework)', 'BS Information Systems', '1'),
(162, 'What is the role of an Enterprise Architect within an organization?', 'Managing daily operations', 'Overseeing marketing campaigns', 'Developing IT solutions', 'Creating and maintaining the organization\'s architectural vision and standards', 'BS Information Systems', '1'),
(163, 'Which aspect of Enterprise Architecture focuses on the design and structure of IT systems and software applications?', 'Business Architecture', 'Data Architecture', 'Technology Architecture', 'Application Architecture', 'BS Information Systems', '1'),
(164, 'In Enterprise Architecture, what does \"TOGAF\" stand for?', 'Technical Open Group Architecture Framework', 'The Organization\'s General Architectural Framework', 'Technical Operations and Governance Architecture Framework', 'The Open Group\'s Architecture Framework', 'BS Information Systems', '1'),
(165, 'Which phase of the TOGAF Architecture Development Method (ADM) focuses on identifying stakeholders and their concerns?', 'Preliminary Phase', 'Phase B: Business Architecture', 'Phase D: Technology Architecture', 'Phase A: Architecture Vision', 'BS Information Systems', '1'),
(166, 'What is the primary purpose of a Business Process Model and Notation (BPMN) diagram in Enterprise Architecture?', 'Defining IT infrastructure components', 'Creating database schemas', 'Managing software development projects', 'Representing and analyzing business processes', 'BS Information Systems', '1'),
(167, 'In Enterprise Architecture, what does \"ROI\" stand for?', 'Record of Implementation', 'Resource Optimization Index', 'Regulatory Oversight and Implementation', 'Return on Investment', 'BS Information Systems', '1'),
(168, 'Which architectural domain in TOGAF deals with data storage, management, and access?', 'Business Architecture', 'Application Architecture', 'Technology Architecture', 'Data Architecture', 'BS Information Systems', '1'),
(169, 'What does the term \"SOA\" stand for in the context of Enterprise Architecture?', 'System Operations and Analysis', 'Security Operations Assessment', 'Strategic Organizational Alignment', 'Service-Oriented Architecture', 'BS Information Systems', '1'),
(170, 'What is the primary purpose of an enterprise system?', 'Managing customer relationships', 'Conducting market research', 'Enhancing employee training', 'Streamlining internal business processes', 'BS Information Systems', '1'),
(171, 'Which department within an organization typically benefits the most from an enterprise system?', 'Human Resources', 'Marketing', 'Legal', 'Finance', 'BS Information Systems', '1'),
(172, 'What is ERP, as it relates to enterprise systems?', 'Enterprise Reporting Platform', 'Enterprise Risk Management', 'Enterprise Relationship Platform', 'Enterprise Resource Planning', 'BS Information Systems', '1'),
(173, 'Which of the following is a key feature of an enterprise system?', 'Isolation of departmental data', 'Limited scalability', 'Frequent manual data entry', 'Real-time data sharing', 'BS Information Systems', '1'),
(174, 'What is the primary benefit of integrating supply chain management into an enterprise system?', 'Decreased productivity', 'Increased communication delays', 'Reduced customer satisfaction', 'Improved inventory management and cost control', 'BS Information Systems', '1'),
(175, 'What role does Customer Relationship Management (CRM) play in an enterprise system?', 'Managing financial transactions', 'Enhancing employee performance', 'Monitoring competitor activities', 'Improving customer interactions and relationships', 'BS Information Systems', '1'),
(176, 'What does Business Intelligence (BI) software provide in an enterprise system?', 'Real-time data entry', 'Advanced data encryption', 'Employee training modules', 'Data analytics and reporting', 'BS Information Systems', '1'),
(177, 'In the context of enterprise systems, what does the acronym SCM stand for?', 'System Configuration Management', 'Security Control Mechanism', 'Sales and Customer Management', 'Supply Chain Management', 'BS Information Systems', '1'),
(178, 'What is a common challenge when implementing an enterprise system in an organization?', 'Minimal disruption to existing processes', 'Inadequate employee training', 'Simplified data integration', 'High implementation costs', 'BS Information Systems', '1'),
(179, 'Which of the following is a primary reason for organizations to invest in enterprise systems?', 'To slow down business operations', 'To increase manual data entry', 'To reduce customer interactions', 'To improve efficiency and decision-making', 'BS Information Systems', '1'),
(180, 'What does HTML stand for in web development?', 'Hyperlink and Text Markup Language', 'High-level Text Management Language', 'Hyper Transfer Markup Language', 'Hypertext Markup Language', 'BS Information Systems', '1'),
(181, 'Which programming language is primarily used for adding interactivity and functionality to web pages?', 'HTML', 'CSS', 'PHP', 'JavaScript', 'BS Information Systems', '1'),
(182, 'Which of the following is used to define the presentation and layout of a web page?', 'HTML', 'JavaScript', 'XML', 'CSS', 'BS Information Systems', '1'),
(183, 'What is the purpose of the \"DOCTYPE\" declaration in an HTML document?', 'It defines the document\'s content.', 'It specifies the character encoding of the document.', 'It provides a link to an external stylesheet.', 'It tells the browser which version of HTML is being used.', 'BS Information Systems', '1'),
(184, 'Which protocol is used for transferring data between a web server and a web browser?', 'FTP', 'SMTP', 'POP3', 'HTTP', 'BS Information Systems', '1'),
(185, 'What is the primary purpose of a web server in web development?', 'Storing website content', 'Running client-side scripts', 'Processing user input', 'Serving web pages to clients', 'BS Information Systems', '1'),
(186, 'Which of the following is a server-side scripting language often used for web development?', 'HTML', 'CSS', 'JavaScript', 'PHP', 'BS Information Systems', '2'),
(187, 'What does SEO stand for in the context of web development?', 'Secure Encryption Online', 'Server Environment Operations', 'Structured External Objects', 'earch Engine Optimization', 'BS Information Systems', '2'),
(188, 'Which web development framework is commonly used for building dynamic and interactive web applications?', 'Bootstrap', 'jQuery', 'XML', 'Django', 'BS Information Systems', '2'),
(189, 'hat is the purpose of responsive web design in web development?', 'Making web pages’ load faster', 'Ensuring web pages are only accessible on desktop computers', 'nhancing server security', 'Optimizing web pages for various screen sizes and devices', 'BS Information Systems', '2'),
(190, 'What is the primary goal of Information Systems (IS) project management?', 'Maximizing individual performance', 'Completing projects ahead of schedule', 'Minimizing communication with stakeholders', 'Delivering successful IS projects on time and within budget', 'BS Information Systems', '2'),
(191, 'Which of the following is a key role in IS project management responsible for defining project goals and deliverables?', 'Project Sponsor', 'Project Stakeholder', 'Project Team Member', 'Project Manager', 'BS Information Systems', '2'),
(192, 'What is the term for a document that outlines the project\'s scope, objectives, and key stakeholders?', 'Gantt Chart', 'Risk Register', 'Project Proposal', 'Project Charter', 'BS Information Systems', '2'),
(193, '. Which project management methodology is known for its flexibility and adaptability, often used in IS projects?', 'Waterfall', 'Six Sigma', ' PRINCE2', 'Agile', 'BS Information Systems', '2'),
(194, 'What is the critical path in project management?', 'The path that requires the most critical resources', 'The path with the fewest tasks', 'The path with the most dependencies', 'The longest sequence of tasks that determines the project\'s duration', 'BS Information Systems', '2'),
(195, 'Which project management process involves identifying and documenting project roles and responsibilities?', 'Project Planning', 'Project Execution', ' Project Closure', 'Project Initiation', 'BS Information Systems', '2'),
(196, 'What is the primary purpose of a Change Request in IS project management?', 'To cancel the project', 'To increase the project budget', 'To assign new team members to the project', 'o document and approve changes to project scope, schedule, or budget', 'BS Information Systems', '2'),
(197, 'Which technique is commonly used to identify and assess potential risks in IS projects?', 'Cost-Benefit Analysis', 'SWOT Analysis', 'Break-even Analysis', 'Risk Assessment Matrix', 'BS Information Systems', '2'),
(198, 'What is the purpose of a Project Kickoff Meeting in IS project management?', 'To announce project delays', 'To close the project', 'To review project documentation', 'To introduce the project team and stakeholders, set expectations, and establish project goals', 'BS Information Systems', '2'),
(199, 'Which of the following is a key success factor for IS project management?', 'Overly ambitious project scope', 'Frequent changes to project objectives', 'Avoiding risk assessment', 'Effective communication and stakeholder engagement', 'BS Information Systems', '2');
INSERT INTO `questions` (`id`, `question`, `incorrect_answer_1`, `incorrect_answer_2`, `incorrect_answer_3`, `correct_answer`, `curriculum`, `year`) VALUES
(200, 'What is the primary purpose of an Information System (IS)?', 'To generate revenue for an organization', 'To manage human resources within an organization', 'To facilitate marketing and advertising efforts', 'To store and process data for decision-making', 'BS Information Systems', '2'),
(201, 'What are the three main components of an Information System (IS)?', 'Data, money, and technology', 'Marketing, finance, and operations', 'Design, production, and distribution', 'Hardware, software, and people', 'BS Information Systems', '2'),
(202, 'Which type of Information System is responsible for processing financial transactions, managing payroll, and generating financial reports?', 'Decision Support System (DSS)', 'Customer Relationship Management (CRM)', 'Supply Chain Management (SCM)', 'Transaction Processing System (TPS)', 'BS Information Systems', '2'),
(203, 'What is the role of a Decision Support System (DSS) in an organization?', 'It records and processes daily transactions.', 'It tracks customer interactions and relationships', 'It manages the supply chain and logistics.', 'It helps managers make semi-structured and unstructured decisions.', 'BS Information Systems', '2'),
(204, 'Which Information System focuses on optimizing an organization\'s interactions with customers to enhance relationships and drive sales?', 'Enterprise Resource Planning (ERP)', 'Knowledge Management System (KMS)', 'Inventory Management System (IMS)', 'Customer Relationship Management (CRM)', 'BS Information Systems', '2'),
(205, 'What is the purpose of a Knowledge Management System (KMS) within an organization?', 'To manage customer data and interactions', 'To optimize financial transactions', 'To track inventory and supply chain operations', 'To capture, store, and distribute organizational knowledge', 'BS Information Systems', '2'),
(206, 'Which Information System is designed to help organizations manage and optimize their internal and external communication and collaboration?', 'Human Resource Information System (HRIS)', 'Intranet', 'Extranet', 'Enterprise Collaboration System (ECS)', 'BS Information Systems', '2'),
(207, 'What is the primary purpose of a Supply Chain Management (SCM) system?', 'To manage employee schedules', 'To optimize manufacturing processes', 'o track customer orders and returns', 'To coordinate the flow of goods, information, and finances across a supply chain', 'BS Information Systems', '2'),
(208, 'Which component of an Information System refers to the set of instructions that control the hardware and direct its operation?', 'People', 'Data', 'Hardware', 'Software', 'BS Information Systems', '2'),
(209, 'In the context of information systems, what does the acronym \"IT\" stand for?', 'International Trade', 'Industrial Transformation', 'Internet Telephony', 'Information Technology', 'BS Information Systems', '2'),
(210, 'What does the acronym \"LAN\" stand for?', 'Long Area Network', 'Large Area Network', 'Linked Area Network', ' Local Area Network', 'BS Information Systems', '2'),
(211, 'Which network topology connects all devices in a circular chain', 'Bus', 'Star', 'Mesh', ' Ring', 'BS Information Systems', '2'),
(212, 'What protocol is commonly used for sending and receiving emails?', 'HTTP', 'FTP', 'TCP', 'SMTP', 'BS Information Systems', '2'),
(213, 'What is the primary purpose of a router in a network?', 'To connect devices within a LAN', 'To filter spam emails', 'To manage printer connections', 'To connect different networks', 'BS Information Systems', '2'),
(214, 'Which OSI model layer is responsible for error detection and correction?', 'Physical Layer', 'Transport Layer', 'Presentation Layer', 'Data Link Layer', 'BS Information Systems', '2'),
(215, 'What is the purpose of a firewall in network security?', 'To block incoming and outgoing web traffic', 'To increase network speed', 'To route data packets', 'To prevent unauthorized access and protect against threats', 'BS Information Systems', '2'),
(216, 'Which IP address range is reserved for private networks?', '10.0.0.0 to 10.255.255.255', '172.16.0.0 to 172.31.255.255', '192.168.0.0 to 192.168.255.255', 'All of the above', 'BS Information Systems', '2'),
(217, 'What is the main function of a DNS server?', 'To provide network security', 'To route data packets', 'To store website content', 'To translate domain names to IP addresses', 'BS Information Systems', '2'),
(218, 'In networking, what does the term \"Mbps\" stand for?', 'Megabytes per second', 'Milliseconds per second', ' Microseconds per second', 'Megabits per second', 'BS Information Systems', '2'),
(219, 'What type of cable is commonly used to connect a computer to a network?', 'USB cable', 'HDMI cable', 'VGA cable', 'Ethernet cable', 'BS Information Systems', '2'),
(220, 'Which network device operates at the Data Link Layer of the OSI model?', 'Router', 'Switch', 'Firewall', 'Switch', 'BS Information Systems', '2'),
(221, 'What is the purpose of NAT (Network Address Translation) in networking?', 'To translate IP addresses to domain names', 'To connect devices within a LAN', 'To encrypt network traffic', 'To allow multiple devices to share a single public IP address', 'BS Information Systems', '2'),
(222, 'Which protocol is commonly used for secure remote access to a network?', 'FTP', 'SNMP', 'HTTP', 'SSH', 'BS Information Systems', '2'),
(223, 'What technology is used to transmit data over long distances using light signals?', ' Ethernet', 'Wi-Fi', 'Bluetooth', 'Fiber optics', 'BS Information Systems', '2'),
(224, 'What does \"VPN\" stand for in the context of network technology?', 'Virtual Personal Network', 'Very Private Network', 'Visible Public Network', 'Virtual Private Network', 'BS Information Systems', '2'),
(225, 'What is a DDoS attack?', ' Data Delivery Over Secure Server', 'Dynamic Domain Override System', 'Digital Data Optimization Service', 'Distributed Denial of Service attack', 'BS Information Systems', '2'),
(226, 'What type of network provides wireless access in a limited area, such as a coffee ', 'WAN', 'PAN', 'MAN', 'WLAN', 'BS Information Systems', '2'),
(227, 'Which technology allows for the wireless transfer of data between devices, typically over short distances?', 'Ethernet', 'DSL', 'Fiber optics', 'Bluetooth', 'BS Information Systems', '2'),
(228, 'What is the purpose of a switch in a network?', 'To connect multiple networks together', 'To block unauthorized access', 'To encrypt data traffic', 'To forward data to the appropriate device based on MAC addresses', 'BS Information Systems', '2'),
(229, 'What is the most widely used network protocol for connecting devices to the internet?', 'HTTP', 'FTP', 'SMTP', 'TCP/IP', 'BS Information Systems', '2'),
(230, 'What is the primary function of a Content Management System (CMS) in the context of information systems?', 'Managing customer relationships', 'Optimizing financial transactions', 'Analyzing market trends', 'Storing and organizing digital content, such as web pages and documents', 'BS Information Systems', '2'),
(231, 'In the context of data storage, what does the acronym \"RAID\" stand for?', 'Random Access Information Device', 'Remote Access and Information Delivery', 'Reliable Automated Information Database', 'Redundant Array of Independent Disks', 'BS Information Systems', '2'),
(232, 'Which Information System component involves the rules, processes, and procedures for managing and maintaining data?', 'Software', 'Hardware', 'Data', 'Procedures', 'BS Information Systems', '2'),
(233, 'What is the main function of a Firewall in an information system?', 'Monitoring employee productivity', 'Managing customer relationships', 'Analyzing financial data', 'Protecting the network from unauthorized access and threats', 'BS Information Systems', '2'),
(234, 'What is the primary objective of Business Process Management (BPM) within an organization?', 'Enhancing customer service', 'Automating all business processes', 'Reducing the number of employees', 'Improving the efficiency and effectiveness of business processes', 'BS Information Systems', '2'),
(235, 'Which type of Information System is designed to help organizations track and manage their inventory and supply chain operations?', 'Decision Support System (DSS)', 'Enterprise Resource Planning (ERP)', 'Geographic Information System (GIS)', 'Inventory Management System (IMS)', 'BS Information Systems', '2'),
(236, 'What does the term \"BYOD\" stand for in the context of information systems?', 'Build Your Own Database', 'Buy Your Own Data', 'Business Yearly Office Deployment', 'Bring Your Own Device', 'BS Information Systems', '2'),
(237, 'Which Information System component is responsible for organizing, structuring, and categorizing data for easy retrieval?', 'People', 'Hardware', 'Software', 'Database Management System (DBMS)', 'BS Information Systems', '2'),
(238, 'What is the primary purpose of a Data Mart in data warehousing?', 'Storing data from multiple sources', 'Analyzing data for strategic decision-making', 'Storing historical and current data for analysis and reporting', 'Providing access to data for a specific group or department', 'BS Information Systems', '2'),
(239, 'What does the acronym \"URL\" stand for in the context of web addresses?', 'Universal Registration Link', 'Unencrypted Request Link', 'User Registration List', 'Uniform Resource Locator', 'BS Information Systems', '2'),
(240, 'What does the acronym \"IT\" commonly stand for?', 'Internet Telephony', 'Integrated Tools', 'International Trade', 'Information Technology', 'BS Information Systems', '2'),
(241, 'Which component of an Information System typically includes computers, servers, and networking devices?', 'Data', 'People', 'Software', 'Hardware', 'BS Information Systems', '2'),
(242, 'Which Information System component contains facts and figures that an organization needs to operate?', 'Hardware', 'Software', 'Procedures', 'Data', 'BS Information Systems', '2'),
(243, 'What is the primary function of software in an Information System?', 'To input data', 'To connect to the internet', 'To manage hardware components', 'To process data and perform tasks', 'BS Information Systems', '2'),
(244, 'Which Information System is used for sending and receiving emails within an organization?', 'Human Resource Information System (HRIS)', 'Enterprise Collaboration System (ECS)', 'Customer Relationship Management (CRM)', 'Email System', 'BS Information Systems', '2'),
(245, 'What is the main goal of Customer Relationship Management (CRM) systems?', 'Managing employee schedules', 'Analyzing financial data', 'Storing and organizing digital content', 'Improving interactions and relationships with customers', 'BS Information Systems', '2'),
(246, 'Which Information System component refers to the personnel who use, manage, and maintain the system?', 'Software', 'Hardware', 'Data', 'People', 'BS Information Technology', '3'),
(247, 'What does the acronym \"DNS\" stand for in the context of the internet?', 'Data Networking System', 'Digital Network Security', 'Dynamic Network Service', 'Domain Name System', 'BS Information Technology', '3'),
(248, 'What type of Information System helps organizations track their financial transactions and manage budgets?', 'Inventory Management System (IMS)', 'Decision Support System (DSS)', 'Geographic Information System (GIS)', 'Enterprise Resource Planning (ERP)', 'BS Information Technology', '3'),
(249, 'What is the primary purpose of a Document Management System (DMS) in an organization?', 'Analyzing market trends', 'Managing customer relationships', 'Protecting the network from threats', 'Storing and retrieving documents and digital content', 'BS Information Technology', '3'),
(250, 'What is the primary goal of information management?', 'To create information', 'To store information', 'To delete information', 'To organize and utilize information', 'BS Information Technology', '3'),
(251, 'Which of the following is an example of structured data?', 'A handwritten letter', 'A voice recording', 'A paper book', 'An Excel spreadsheet', 'BS Information Technology', '3'),
(252, 'Which term refers to the process of converting data into meaningful information?', 'Data extraction', 'Data storage', 'Data manipulation', 'Data mining', 'BS Information Technology', '3'),
(253, 'What is the purpose of a database management system (DBMS)?', 'To create data', 'To process data', 'To encrypt data', 'To manage and store data', 'BS Information Technology', '3'),
(254, 'Which of the following best describes the concept of data integrity?', 'Ensuring data is free from malware', 'Protecting data from physical damage', 'Deleting outdated data', 'Ensuring data is up-to-date and accurate', 'BS Information Technology', '3'),
(255, 'What does the acronym \"BI\" stand for in the context of information management?', 'Basic Information', 'Big Inventory', 'Binary Information', 'Business Intelligence', 'BS Information Technology', '3'),
(256, 'Which of the following is not a component of the Information Lifecycle Management (ILM) framework?', 'Data creation', 'Data classification', 'Data destruction', 'Data compression', 'BS Information Technology', '3'),
(257, 'Which technology is commonly used for preserving the authenticity and integrity of digital documents over time?', 'Virtual Reality', 'Augmented Reality', 'Artificial Intelligence', 'Blockchain', 'BS Information Technology', '3'),
(258, 'Which component is responsible for connecting external devices, such as keyboards, mice, and printers, to a computer?', 'Graphics card', 'Network card', 'Optical drive', 'USB port', 'BS Information Technology', '3'),
(259, 'What does SDLC stand for?', 'Software Design and Lifecycle Control', 'System Development and Lifecycle Coordination', 'Software Development and Lifecycle Configuration', 'System Development Life Cycle', 'BS Information Technology', '3'),
(260, 'Which phase of the SDLC involves identifying the system\'s scope, goals, and constraints?', 'Analysis', 'Design', 'Implementation', 'Planning', 'BS Information Technology', '3'),
(261, 'In the SDLC, which phase focuses on gathering and understanding user requirements?', 'Planning', 'Design', 'Testing', 'Analysis', 'BS Information Technology', '3'),
(262, 'During which SDLC phase are system specifications and architecture developed?', 'Planning', 'Analysis', 'Maintenance', 'Design', 'BS Information Technology', '3'),
(263, 'What is the purpose of the Implementation phase in the SDLC?', 'Gather user requirements', 'Plan the project', 'Conduct system testing', 'Develop the system', 'BS Information Technology', '3'),
(264, 'Which phase of the SDLC involves coding and unit testing?', 'Design', 'Maintenance', 'Planning', 'Implementation', 'BS Information Technology', '3'),
(265, 'What is the primary focus of the Testing phase in the SDLC?', 'Develop the system', 'Gather user requirements', 'Plan the project', 'Verify and validate the system', 'BS Information Technology', '3'),
(266, 'During which phase of the SDLC is the system installed and made operational for users?', 'Design', 'Testing', 'Maintenance', 'Implementation', 'BS Information Technology', '3'),
(267, 'What phase of the SDLC occurs after the system is deployed and operational?', 'Analysis', 'Design', 'Testing', 'Testing Maintenance', 'BS Information Technology', '3'),
(268, 'In the context of the SDLC, what is the purpose of the Maintenance phase?', 'Develop the system', 'Gather user requirements', 'Plan the project', 'Correct defects and enhance the system', 'BS Information Technology', '3'),
(269, 'What is the primary goal of the Analysis phase in the SDLC?', 'Developing the system', 'Installing the system for users', 'Conducting system testing', 'Gathering and understanding user requirements', 'BS Information Technology', '3'),
(270, 'In which SDLC phase is the detailed system design created, including data structures and user interfaces?', 'Planning', 'Analysis', 'Implementation', 'Design', 'BS Information Technology', '3'),
(271, 'What is the primary focus of the User Acceptance Testing (UAT) phase in the SDLC?', 'Verifying the functionality of individual components', 'Developing technical specifications', 'Installing the system for users', 'Ensuring that the system meets user needs and expectations', 'BS Information Technology', '3'),
(272, 'During which phase of the SDLC are software developers primarily involved in writing code?', 'Analysis', 'Design', 'Maintenance', 'Implementation', 'BS Information Technology', '3'),
(273, 'What phase of the SDLC typically involves setting up a project schedule, allocating resources, and estimating costs?', 'Analysis', 'Design', 'Maintenance', 'Planning', 'BS Information Technology', '3'),
(274, 'What does the \"Spiral\" model in SDLC emphasize?', 'Sequential, linear progression through phases', 'Rapid development with frequent releases', 'Parallel development of multiple system components', 'Iterative development with a focus on risk analysis', 'BS Information Technology', '3'),
(275, 'In the SDLC, what does \"Prototyping\" focus on?', 'Developing the entire system in a single phase', 'Sequential, linear progression through phases', 'Rapid development with frequent releases', 'Creating a working model of the system to gather feedback', 'BS Information Technology', '3'),
(276, 'What is the primary objective of the Closure phase in the SDLC?', 'Developing the system', 'Analyzing user requirements', 'Conducting system testing', 'Finalizing all project activities and documentation', 'BS Information Technology', '3'),
(277, 'During which SDLC phase is the emphasis on addressing system defects, enhancing functionality, and adapting to changing requirements?', 'Analysis', 'Design', 'Implementation', 'Maintenance', 'BS Information Technology', '3'),
(278, 'What is the primary purpose of the Risk Assessment phase in the SDLC?', 'Creating user documentation', 'Conducting system testing', 'Developing the system', 'Analyzing potential risks to the project and system', 'BS Information Technology', '3'),
(279, 'What is JavaScript primarily used for in web development?', 'Styling web pages', 'Adding structure to web pages', 'Storing data on the server', 'Enhancing the interactivity of web pages', 'BS Information Technology', '3'),
(280, 'Which keyword is used to declare a variable in JavaScript?', 'const', 'let', 'variable', 'var', 'BS Information Technology', '3'),
(281, 'What type of programming language is JavaScript?', 'Compiled language', 'Assembly language', 'Markup language', 'Interpreted language', 'BS Information Technology', '3'),
(282, 'What does the DOM stand for in JavaScript?', 'Data Object Model', 'Document Orientation Model', 'Document Object Method', 'Document Object Model', 'BS Information Technology', '3'),
(283, 'Which of the following is NOT a JavaScript data type?', 'String', 'Boolean', 'Float', 'Tuple', 'BS Information Technology', '3'),
(284, 'What is the purpose of the `if` statement in JavaScript?', 'Defining a function', 'Looping through an array', 'Declaring a variable', 'Conditional execution of code', 'BS Information Technology', '3'),
(285, 'Which method is used to add an HTML element to a web page using JavaScript?', '`appendElement()`', '`addHTML()`', '`insertHTML()`', '`createElement()`', 'BS Information Technology', '3'),
(286, 'Which operator is used for strict equality in JavaScript?', '==', '!=', '!==', '===', 'BS Information Technology', '3'),
(287, 'What is an array in JavaScript?', 'A data type that represents a single value', 'A collection of key-value pairs', 'A function that performs a specific task', 'A collection of ordered values', 'BS Information Technology', '3'),
(288, 'What is the purpose of the `console.log()` function in JavaScript?', 'Displaying messages to the user in a popup', 'Writing data to a file', 'Generating random numbers', 'Printing output to the browser\'s console for debugging', 'BS Information Technology', '3'),
(289, 'What is the purpose of the `console.log()` function in JavaScript?', 'Displaying messages to the user in a popup', 'Writing data to a file', 'Generating random numbers', 'Printing output to the browser\'s console for debugging', 'BS Information Technology', '3'),
(290, 'What is C++?', 'A scripting language', 'A markup language', 'An operating system', 'A high-level programming language', 'BS Information Technology', '3'),
(291, 'In C++, what is the symbol for the \"modulo\" operator?', '*', '/', '#', '%', 'BS Information Technology', '3'),
(292, 'What is the keyword used in C++ to define a class?', 'struct', 'int', 'void', 'class', 'BS Information Technology', '3'),
(293, 'Which of the following is NOT a valid C++ data type?', 'float', 'char', 'bool', 'string', 'BS Information Technology', '3'),
(294, 'What is the purpose of the C++ \"cin\" object?', 'To perform mathematical calculations', 'To print text to the console', 'To display graphics on the screen', 'To read input from the user', 'BS Information Technology', '3'),
(295, 'What does the C++ \"void\" keyword indicate in a function declaration?', 'It indicates that the function returns an integer value.', 'It indicates that the function takes no arguments.', 'It is used to define a constructor.', 'It indicates that the function has no return value.', 'BS Information Technology', '3'),
(296, 'Which C++ operator is used to compare two values for equality?', '!=', '>', '<=', '==', 'BS Information Technology', '3'),
(297, 'What is the purpose of the \"new\" keyword in C++?', 'To delete an object from memory', 'To define a new function', 'To declare a variable', 'To allocate memory for a new object', 'BS Information Technology', '3'),
(298, 'What is a C++ header file extension for standard input and output?', '.stdio', '.cpp', '.io', '.h', 'BS Information Technology', '3'),
(299, 'Which C++ loop construct is used for iterating over a range of values a specific number of times?', 'while', 'do-while', 'switch', 'for', 'BS Information Technology', '3'),
(300, 'In C++, what is the purpose of the \"const\" keyword when used with a function argument?', 'It indicates that the function argument is a constant value.', 'It makes the function argument a global constant.', 'It prevents the function from being called.', 'It indicates that the function argument cannot be modified within the function.', 'BS Information Technology', '3'),
(301, 'What is the term for a C++ feature that allows a class to inherit properties and behaviors from another class?', 'Encapsulation', 'Polymorphism', 'Abstraction', 'Inheritance', 'BS Information Technology', '3'),
(302, 'Which C++ operator is used for dynamic memory allocation?', '&', '*', 'delete', 'new', 'BS Information Technology', '3'),
(303, 'What is the purpose of the \"friend\" keyword in C++?', 'To indicate that a function is a member of a class', 'To create a new object', 'To specify a variable\'s data type', 'To grant access to a class\'s private members to an external function or class', 'BS Information Technology', '3'),
(304, 'What is the concept of function overloading in C++?', 'Using the same function name with different return types', 'Using the same function name with different access modifiers', 'Using the same function name with a different number of arguments', 'Using the same function name with different parameter types or counts', 'BS Information Technology', '3'),
(305, 'In C++, what is a \"pure virtual function\" in a class?', 'A function that can only be called once', 'A function that returns a constant value', 'A function that cannot be overridden by derived classes', 'A function that has no implementation in the base class and must be implemented in derived classes', 'BS Information Technology', '3'),
(306, 'What is the \"this\" pointer in C++?', 'A pointer to the next memory location', 'A pointer to the previous object in memory', 'A pointer to the base class of an object', 'A pointer to the current object being operated on', 'BS Information Technology', '4'),
(307, 'What is a C++ template class?', 'A class that provides default values for its data members', 'A class that is declared within another class', 'A class that cannot be inherited from', 'A class that can be used to create other classes with similar properties and behaviors', 'BS Information Technology', '4'),
(308, 'In C++, what is the purpose of the \"try,\" \"catch,\" and \"throw\" keywords?', 'They are used for loop control.', 'They are used for file I/O operations.', 'They are used for defining global variables.', 'They are used for exception handling and error management.', 'BS Information Technology', '4'),
(309, 'What is the C++ Standard Template Library (STL) used for?', 'Creating graphical user interfaces', 'Implementing linked lists', 'Managing database connections', 'Providing a collection of template classes and functions for common data structures and algorithms', 'BS Information Technology', '4'),
(310, 'What does CSS stand for?', 'Computer Style Sheets', 'Creative Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets', 'BS Information Technology', '4'),
(317, 'What is the primary purpose of CSS?', 'To define the structure of a webpage', 'To add interactivity to a webpage', 'To perform server-side scripting', 'To specify the visual presentation of a webpage', 'BS Information Technology', '4'),
(318, 'What is the CSS selector that selects all elements of a specific type on a webpage?', '.class', '#id', '* (asterisk)', 'element', 'BS Information Technology', '4'),
(319, 'Which property is used to set the text color in CSS?', 'font-color', 'text-color', 'font-style', 'color', 'BS Information Technology', '4'),
(320, 'What is the CSS property used to control the spacing between lines of text within an element?', 'line-spacing', 'text-spacing', 'line-spacing', 'line-height', 'BS Information Technology', '4'),
(321, 'Which CSS property is used to control the size of an element\'s font?', 'text-size', 'font-height', 'size-font', 'font-size', 'BS Information Technology', '4'),
(322, 'What is the purpose of the CSS \"box model\"?', 'To define the layout of a webpage', 'To create 3D animations', 'To create image galleries', 'To control the dimensions and spacing of elements', 'BS Information Technology', '4'),
(323, 'Which CSS property is used to add a shadow effect to an element?', 'shadow-effect', 'element-shadow', 'box-shadow', 'text-shadow', 'BS Information Technology', '4'),
(324, 'What is the correct way to comment out CSS code?', 'This is a comment ', '// This is a comment', '# This is a comment', '/* This is a comment */', 'BS Information Technology', '4'),
(325, 'Which of the following is not a cloud service model?', 'Infrastructure as a Service (IaaS)', 'Software as a Service (SaaS)', 'Platform as a Service (PaaS)', 'Data as a Service (DaaS)', 'BS Information Technology', '4'),
(326, 'Which cloud deployment model is best suited for an organization that needs complete control over its infrastructure?', 'Public Cloud', 'Hybrid Cloud', 'Community Cloud', 'Private Cloud', 'BS Information Technology', '4'),
(327, 'What is the main advantage of elasticity in cloud computing?', 'It reduces the need for data backups', 'It ensures 100% uptime for cloud services', 'It provides advanced security features', 'It allows resources to be automatically scaled up or down', 'BS Information Technology', '4'),
(328, 'Which cloud provider is known for its IaaS offerings, including Amazon EC2?', 'Microsoft Azure', 'Google Cloud Platform', 'IBM Cloud', 'Amazon Web Services (AWS)', 'BS Information Technology', '4'),
(329, 'What does S3 stand for in the context of AWS cloud services?', 'Secure Software Storage', 'System Synchronization Service', 'Software Sharing Standard', 'Simple Storage Service', 'BS Information Technology', '4'),
(330, 'Which cloud computing characteristic allows multiple customers to share the same physical infrastructure while maintaining privacy?', 'On-demand self-service', 'Broad network access', 'Rapid elasticity', 'Resource pooling', 'BS Information Technology', '4'),
(331, 'What is the term for a software application that is hosted in the cloud and accessible over the internet?', 'Virtualization', 'Cloudware', 'Malware', 'Software as a Service (SaaS)', 'BS Information Technology', '4'),
(332, 'What is the primary role of a hypervisor in cloud computing?', 'To provide high-speed internet access', 'To secure data stored in the cloud', 'To configure network settings', 'To manage virtual machines and allocate resources', 'BS Information Technology', '4'),
(333, 'What is the term for the practice of using multiple cloud service providers for different aspects of an organization\'s cloud computing needs?', 'Hybrid Cloud', 'Private Cloud', 'Public Cloud', 'Multicloud', 'BS Information Technology', '4'),
(334, 'What is data mining?', 'The process of encrypting data for secure storage', 'The process of backing up data to a remote server', 'The process of generating random data for testing purposes', 'The process of extracting valuable knowledge from large volumes of data', 'BS Information Technology', '4'),
(335, 'Which of the following is not a common data mining technique?', 'Clustering', 'Regression analysis', 'Association rule mining', 'Database management', 'BS Information Technology', '4'),
(336, 'What is the primary goal of data preprocessing in data mining?', 'To remove all data from the dataset', 'To create a new dataset from scratch', 'To encrypt the data for security', 'To enhance the quality of data and prepare it for analysis', 'BS Information Technology', '4'),
(337, 'What is the term for finding hidden patterns or relationships in data that are not apparent to the naked eye?', 'Data extraction', 'Data visualization', 'Data transformation', 'Data discovery', 'BS Information Technology', '4'),
(338, 'Which data mining technique is used for classifying data into predefined categories or groups?', 'Regression analysis', 'Clustering', 'Classification', 'Association rule mining', 'BS Information Technology', '4'),
(339, 'What is the purpose of association rule mining?', 'To predict future data values', 'To summarize data using statistics', 'To create data visualizations', 'To find interesting relationships between variables in large datasets', 'BS Information Technology', '4'),
(340, 'Which of the following is a common data mining tool or software platform?', 'Microsoft Word', 'Adobe Photoshop', 'Google Chrome', 'IBM Watson', 'BS Information Technology', '4'),
(341, 'What is the term for the process of transforming data into a format suitable for data mining?', 'Data visualization', 'Data extraction', 'Data encryption', 'Data preprocessing', 'BS Information Technology', '4'),
(342, 'Which data mining task aims to find patterns, trends, or associations in data, often using machine learning techniques?', 'Classification', 'Regression analysis', 'Data summarization', 'Clustering', 'BS Information Technology', '4'),
(343, 'In data mining, what is a decision tree?', 'A type of data visualization', 'A visual representation of data', 'A type of data transformation technique', 'A hierarchical model that represents decisions and their consequences', 'BS Information Technology', '4'),
(344, 'What is the primary goal of mobile application development for business integration?', 'To create mobile games for entertainment', 'To develop apps for personal use', 'To promote external businesses', 'To improve communication within the organization', 'BS Information Technology', '4'),
(345, 'Which of the following is a key advantage of integrating mobile applications into business processes?', 'Decreased accessibility for remote employees', 'Greater reliance on traditional paperwork', 'Enhanced security concerns', 'Increased operational efficiency and productivity', 'BS Information Technology', '4'),
(346, 'What is the term for the process of adapting a mobile application to work on different operating systems (e.g., iOS and Android)?', 'Native development', 'Mobile optimization', 'Web app development', 'Cross-platform development', 'BS Information Technology', '4'),
(347, 'What does API stand for in the context of mobile app integration?', 'Advanced Programming Instructions', 'Application Performance Indicator', 'Automated Payment Integration', 'Application Program Interface', 'BS Information Technology', '4'),
(348, 'Which of the following is a common programming language for mobile app development?', 'SQL', 'HTML', 'Excel', 'Java', 'BS Information Technology', '4'),
(349, 'What is the primary advantage of using mobile apps for customer relationship management (CRM) in business?', 'Reduced customer interaction', 'Decreased accessibility for customers', 'Lower overall costs', 'Improved customer service and engagement', 'BS Information Technology', '4'),
(350, 'What is the term for the process of ensuring that mobile apps meet security and compliance standards?', 'Mobile integration', 'App optimization', 'Mobile branding', 'Mobile security testing', 'BS Information Technology', '4'),
(351, 'Which mobile app distribution platform allows businesses to create private app stores for their employees?', 'Google Play Store', 'Apple App Store', 'Amazon Appstore', 'Enterprise App Store', 'BS Information Technology', '4'),
(352, 'What does BYOD stand for in the context of mobile app development for business integration?', 'Bring Your Own Device', 'Business Yearly Objectives and Deliverables', 'Be Your Own Developer', 'Bring Your Own Device', 'BS Information Technology', '4'),
(353, 'Which technology allows businesses to push real-time updates and notifications to mobile apps?', 'Bluetooth', 'Near Field Communication (NFC)', 'GPS tracking', 'Push notifications', 'BS Information Technology', '4'),
(354, 'What is the purpose of the CSS `:before` and `:after` pseudo-elements?', 'To create HTML elements with JavaScript', 'To style the first and last child elements of a parent', 'To create pop-up windows in web applications', 'To target and style elements that come before and after a specific element', 'BS Information Technology', '4'),
(355, 'Which CSS property is used to control the order in which an element is displayed, with higher values appearing on top?', 'order', 'position', 'layer-index', 'z-index', 'BS Information Technology', '4'),
(356, 'In CSS, what is the purpose of the `@media` rule?', 'To define custom fonts for a webpage', 'To specify the background color of the body element', 'To create animations and transitions', 'To apply different styles based on the characteristics of the device or viewport', 'BS Information Technology', '4'),
(357, 'Which CSS property is used to make text italic?', 'text-style', 'text-transform', 'font-transform', 'font-style', 'BS Information Technology', '4'),
(358, 'What is the CSS property used to control the space between lines of text within an element, while also supporting typographic features like ligatures?', 'text-spacing', 'line-spacing', 'text-line', 'line-height', 'BS Information Technology', '4'),
(359, 'Which CSS property is used to create a shadow effect around an element?', 'shadow-effect', 'text-shadow', 'element-shadow', 'box-shadow', 'BS Information Technology', '4'),
(360, 'In CSS, what does the \"C\" stand for in RGB?', 'Contrast', 'Combination', 'Container', 'Color', 'BS Information Technology', '4'),
(361, 'What is the CSS property used to control the alignment of an element\'s content within its container?', 'content-align', 'element-align', 'container-align', 'text-align', 'BS Information Technology', '4'),
(362, 'What is the CSS property used to set the style of a list marker (e.g., bullet or number) in a list?', 'marker-style', 'marker-type', 'bullet-style', 'list-style-type', 'BS Information Technology', '4'),
(363, 'What is the purpose of the CSS property \"flexbox\"?', 'To control the order of elements in a webpage', 'To create pop-up windows', 'To define custom fonts for text elements', 'To create flexible layouts with aligned and evenly spaced elements', 'BS Information Technology', '4'),
(364, 'What does HTML stand for?', 'Hyper Transfer Markup Language', 'Hypertext Transfer Protocol', 'High-Level Text Language', 'Hypertext Markup Language', 'BS Information Technology', '4'),
(367, 'What does XAMPP stand for?', 'Xtra Apache MySQL PHP Perl', 'Cross-platform Apache MySQL PHP Python', 'XAMPP is a secret code', 'XAMPP is not an acronym', 'BS Information Technology', '4'),
(368, 'What is the primary purpose of XAMPP?', 'To manage web server hardware', 'To create mobile applications', 'To analyze network traffic', 'To facilitate web development and testing', 'BS Information Technology', '4'),
(369, 'Which programming languages are commonly included in the XAMPP stack?', 'Java and C#', 'JavaScript and Ruby', 'C++ and Swift', 'PHP, Perl, and Python', 'BS Information Technology', '4'),
(370, 'In XAMPP, which component is responsible for serving web pages to users\' browsers?', 'MySQL', 'PHP', 'Perl', 'Apache', 'BS Information Technology', '4'),
(371, 'What is the primary database management system included in XAMPP?', 'Oracle', 'Microsoft SQL Server', 'PostgreSQL', 'MySQL', 'BS Information Technology', '4'),
(372, 'Which operating systems is XAMPP compatible with?', 'Windows and macOS', 'macOS and Linux', 'Android and iOS', 'Windows, macOS, and Linux', 'BS Information Technology', '4'),
(373, 'What is the purpose of the XAMPP control panel (XAMPP Control)?', 'To launch video games', 'To create graphics and designs', 'To edit configuration files', 'To manage XAMPP components and services', 'BS Information Technology', '4'),
(374, 'What does the acronym \"DNS\" stand for in the context of the internet?', 'Data Networking System', 'Digital Network Security', 'Dynamic Network Service', 'Domain Name System', 'BS Information Systems', '3'),
(375, 'What type of Information System helps organizations track their financial transactions and manage budgets?', 'Inventory Management System (IMS)', 'Decision Support System (DSS)', 'Geographic Information System (GIS)', 'Inventory Management System (IMS)', 'BS Information Systems', '3'),
(376, 'What is the primary purpose of a Document Management System (DMS) in an organization?', 'Analyzing market trends', 'Managing customer relationships', 'Protecting the network from threats', 'Storing and retrieving documents and digital content', 'BS Information Systems', '3'),
(377, 'What is the primary goal of information management?', 'To create information', 'To store information', 'To delete information', 'To organize and utilize information', 'BS Information Systems', '3'),
(378, 'Which of the following is an example of structured data?', 'A handwritten letter', 'A voice recording', 'A paper book', 'An Excel spreadsheet', 'BS Information Systems', '3'),
(379, 'Which term refers to the process of converting data into meaningful information?', 'Data extraction', 'Data storage', 'Data manipulation', 'Data mining', 'BS Information Systems', '3'),
(380, 'What is the purpose of a database management system (DBMS)?', 'To create data', 'To process data', 'To encrypt data', 'To manage and store data', 'BS Information Systems', '3'),
(381, 'Which of the following best describes the concept of data integrity?', 'Ensuring data is free from malware', 'Protecting data from physical damage', 'Deleting outdated data', 'Ensuring data is up-to-date and accurate', 'BS Information Systems', '3'),
(382, 'What does the acronym \"BI\" stand for in the context of information management?', 'Basic Information', 'Big Inventory', 'Binary Information', 'Business Intelligence', 'BS Information Systems', '3'),
(383, 'Which of the following is not a component of the Information Lifecycle Management (ILM) framework?', 'Data creation', 'Data classification', 'Data destruction', 'Data compression', 'BS Information Systems', '3'),
(384, 'Which technology is commonly used for preserving the authenticity and integrity of digital documents over time?', 'Virtual Reality', 'Augmented Reality', 'Artificial Intelligence', 'Blockchain', 'BS Information Systems', '3'),
(385, 'What is the primary purpose of a content management system (CMS)?', 'To create web content', 'To analyze data', 'To secure networks', 'To manage digital content', 'BS Information Systems', '3'),
(386, 'In the context of information security, what does the term \"phishing\" refer to?', 'A method of organizing data', 'The process of backing up data', 'A system for tracking data access', 'An attempt to deceive individuals into revealing sensitive information', 'BS Information Systems', '3'),
(387, 'Which of the following is not a common challenge in information management?', 'Data security and privacy', 'Data redundancy', 'Data accuracy', 'Data retrieval speed', 'BS Information Systems', '3'),
(388, 'What is the purpose of a Document Management System (DMS)?', 'To create documents', 'To analyze data', 'To encrypt data', ' To store and organize documents', 'BS Information Systems', '3'),
(389, 'What is the role of a Chief Information Officer (CIO) in an organization?', 'Managing customer relations', 'Creating marketing strategies', 'Handling financial transactions', 'Overseeing the management of information technology and data', 'BS Information Systems', '3'),
(390, 'What is metadata in the context of information management?', 'Data that is encrypted for security', 'Data used for marketing purposes', 'Data used for training artificial intelligence models', 'Data about data, providing information about its characteristics and context', 'BS Information Systems', '3'),
(391, 'Which information management practice involves arranging data in a specific order or structure to make it easily retrievable?', 'Data encryption', 'Data archiving', 'Data modeling', 'Data normalization', 'BS Information Systems', '3'),
(392, 'What is the primary purpose of a Knowledge Management System (KMS)?', 'To manage and store data', 'To create marketing content', 'To track financial transactions', 'To capture, organize, and share an organization\'s collective knowledge', 'BS Information Systems', '3'),
(393, 'Which of the following is an example of unstructured data?', 'Customer names and addresses in a database', 'Sales figures in a spreadsheet', 'Website traffic statistics', 'Emails, social media posts, and text documents', 'BS Information Systems', '3'),
(394, 'What does the acronym \"CRM\" stand for in the context of information management?', 'Creative Resource Management', 'Customer Records Management', 'Centralized Report Management', 'Customer Relationship Management', 'BS Information Systems', '3'),
(395, 'What is the primary goal of data governance in information management?', 'Deleting all data that is not immediately needed', 'Ensuring data is difficult to access', 'Storing data in multiple locations for redundancy', 'Establishing processes to ensure data quality, security, and compliance', 'BS Information Systems', '3'),
(396, 'What is the purpose of an Electronic Document Management System (EDMS)?', 'To create data', 'To manage financial transactions', 'To organize marketing campaigns', 'To store and manage digital documents and records', 'BS Information Systems', '3'),
(397, 'What is the purpose of data backup in information management?', 'To permanently delete data', 'To replicate data across multiple locations', 'To classify data for reporting', 'To recover data in case of loss or damage', 'BS Information Systems', '3'),
(398, 'What is the primary goal of data classification in information management?', 'To randomly assign labels to data', 'To create new data', 'To compress data for storage', 'To organize data into categories based on its sensitivity or importance', 'BS Information Systems', '3'),
(399, 'In the context of data management, what is \"data lineage\"?', 'The process of creating new data', 'The process of deleting outdated data', 'A method for encrypting data', 'A visual representation of the flow and transformation of data through an organization', 'BS Information Systems', '3'),
(400, 'Which of the following is a key aspect of data quality management?', 'Data destruction', 'Data duplication', 'Data encryption', 'Data validation and cleansing', 'BS Information Systems', '3'),
(401, 'What does the term \"Master Data Management (MDM)\" refer to in information management?', 'The process of creating data', 'The process of data archiving', 'A method for data compression', 'The management of an organization\'s most critical data to ensure consistency and accuracy', 'BS Information Systems', '3'),
(402, 'What is the purpose of data archiving in information management?', 'To permanently delete data', 'To create new data', 'To share data with external parties', 'To preserve historical data that is no longer actively used', 'BS Information Systems', '3'),
(403, 'In information management, what is the main purpose of access control?', 'To create data', 'To make data available to the public', 'To encrypt data', 'To restrict access to data based on user roles and permissions', 'BS Information Systems', '3'),
(404, 'What is the purpose of data warehousing in information management?', 'To create data', 'To encrypt data', 'To archive all data indefinitely', 'To store and consolidate data from multiple sources for reporting and analysis', 'BS Information Systems', '3'),
(405, 'In the context of information management, what is the role of a Data Steward?     ', 'To create data', 'To design marketing campaigns', 'To manage financial transactions', 'To ensure data quality, compliance, and usability', 'BS Information Systems', '3'),
(406, 'What is the primary purpose of a data dictionary in information management?', 'To create data', 'To classify data based on its importance', 'To store and manage digital documents', 'To define and document data attributes, meanings, and relationships', 'BS Information Systems', '3'),
(407, 'What is a technopreneur?', 'A software developer', 'A mechanical engineer', 'A venture capitalist', 'An entrepreneur who operates exclusively in the technology sector', 'BS Information Systems', '3'),
(408, 'Which of the following best describes the primary goal of a technopreneur?', 'Maximizing profits', 'Managing large teams of employees', 'Adhering to traditional business models', 'Creating innovative technology solutions', 'BS Information Systems', '3'),
(409, 'What is a startup accelerator in the context of technopreneurship?', 'A device that accelerates internet connections', 'A software tool for optimizing computer performance', 'A type of venture capital firm', 'A program that provides mentorship, resources, and funding to early-stage tech startups', 'BS Information Systems', '3'),
(410, 'In technopreneurship, what is the \"minimum viable product\" (MVP)?', 'The most expensive product a startup can produce', 'The final version of a product before launch', 'A product created solely for marketing purposes', 'The first product a company develops, which may lack some features but is functional', 'BS Information Systems', '3'),
(411, 'What does the term \"disruptive innovation\" refer to in the context of technopreneurship?', 'Innovations that are highly regulated by the government', 'Innovations that enhance existing technologies', 'Innovations that are only applicable in niche markets', 'Innovations that significantly alter markets and industries', 'BS Information Systems', '3'),
(412, 'Which of the following is a common source of funding for early-stage technopreneurial ventures?', 'Traditional bank loans', 'Corporate mergers', 'Real estate investments', 'Government grants', 'BS Information Systems', '3'),
(413, 'What is a business model canvas in the context of technopreneurship?', 'A type of computer monitor', 'A digital marketing strategy', 'A legal document for patenting technology', 'A visual tool for outlining and analyzing a startup\'s business plan', 'BS Information Systems', '3'),
(414, 'In technopreneurship, what does the term \"pivot\" mean?', 'To spin around rapidly', 'To increase the number of employees in a company', 'To merge with another company', 'o change a startup\'s business strategy in response to market feedback', 'BS Information Systems', '3'),
(415, 'What is intellectual property (IP) in the context of technopreneurship?', 'A type of computer software', 'The physical assets of a technology company', 'The stock market value of a tech company', 'Legal rights to intangible creations, such as patents, trademarks, and copyrights', 'BS Information Systems', '3'),
(416, 'What role does risk-taking play in the mindset of a technopreneur?', 'Risk-taking is discouraged in technopreneurship.', 'Risk-taking is limited to financial matters.', 'Risk-taking is solely the responsibility of investors.', 'Technopreneurs embrace calculated risks in pursuit of innovation and growth.', 'BS Information Systems', '3'),
(417, 'What does the term \"bootstrapping\" mean in the context of technopreneurship?', 'A method of tying one\'s shoelaces', 'A type of computer programming language', 'A marketing technique for technology products', ' A strategy where a startup funds its own growth without external investors', 'BS Information Systems', '3'),
(418, 'Which of the following best describes the concept of \"market validation\" in technopreneurship?', 'Demonstrating the product\'s functionality to potential customers', 'Testing a product to ensure it works without errors', 'Conducting market research to understand competitors', 'Proving there is a demand for the product or service in the market', 'BS Information Systems', '3'),
(419, 'What does the term \"unicorn\" refer to in the world of technopreneurship?', 'A mythical creature', 'A type of tech gadget', 'An open-source software framework', 'A startup company valued at over $1 billion', 'BS Information Systems', '3'),
(420, 'In the context of technopreneurship, what is the significance of an \"exit strategy\"?', 'A plan for leaving a technology conference', 'A marketing strategy for a new product launch', 'A method for acquiring venture capital funding', 'A plan for selling or ending a startup venture', 'BS Information Systems', '3');
INSERT INTO `questions` (`id`, `question`, `incorrect_answer_1`, `incorrect_answer_2`, `incorrect_answer_3`, `correct_answer`, `curriculum`, `year`) VALUES
(421, 'What is a \"venture capitalist\" in the field of technopreneurship?', 'A technology consultant', 'A software developer', 'A government regulator for the technology industry', 'An individual or firm that invests in startups in exchange for equity or ownership', 'BS Information Systems', '3'),
(422, 'In the context of technopreneurship, what is meant by the term \"agile development\"?', 'The rapid construction of physical prototypes', 'A business model focused on rigid long-term planning', 'A marketing strategy for promoting technology products', 'A project management approach that emphasizes flexibility and responsiveness to change', 'BS Information Systems', '3'),
(423, 'What is a \"proof of concept\" in technopreneurship?', 'A scientific experiment', 'A presentation to potential investors', 'A detailed financial plan for a startup', 'A demonstration that a technology idea is feasible and can work', 'BS Information Systems', '3'),
(424, 'What is the role of a technopreneurship incubator or accelerator program?', 'To slow down the development of startups', 'To provide office space for tech companies', 'To invest in well-established tech companies', 'To offer mentorship, resources, and support to early-stage technology startups', 'BS Information Systems', '3'),
(425, 'What is the primary purpose of a pitch deck in technopreneurship?', 'A tool for pitching tents at technology conferences', 'A device for capturing sound in a recording studio', 'A type of computer hardware', 'A presentation used to persuade investors and stakeholders about a startup\'s potential', 'BS Information Systems', '3'),
(426, 'What does the term \"IP infringement\" refer to in technopreneurship?', 'A process for obtaining more intellectual property rights', 'A marketing strategy for promoting new technology', 'A type of technology industry trade show', 'The unauthorized use or violation of someone else\'s intellectual property, such as patents or copyrights', 'BS Information Systems', '3'),
(427, 'What does the term \"burn rate\" refer to in technopreneurship?', 'The rate at which a computer consumes electricity', 'The speed at which a technology product is adopted by consumers', 'The rate at which a technopreneur generates revenue', 'The rate at which a startup spends its available capital', 'BS Information Systems', '3'),
(428, 'What is a \"pilot program\" in the context of technopreneurship?', 'A small aircraft used by technopreneurs for business travel', 'A type of software development methodology', 'A marketing campaign targeting airplane enthusiasts', 'A trial run or small-scale implementation of a technology product or service', 'BS Information Systems', '3'),
(429, 'What does the term \"scalability\" mean in the context of technopreneurship?', 'The ability to weigh technology products', 'The process of making technology products smaller in size', 'The ability to build physical prototypes of tech products', 'The capacity of a startup to grow its operations and handle increased demand', 'BS Information Systems', '3'),
(430, 'In technopreneurship, what is a \"pivot\"?', 'To turn a physical device on or off', 'To switch from online marketing to traditional marketing', 'To merge with another startup company', 'To change a startup\'s business strategy in response to customer feedback', 'BS Information Systems', '3'),
(431, 'What is the primary goal of a technopreneur when seeking angel investment?', 'To secure loans from a bank', 'To raise funds from venture capitalists', 'To sell the company to the highest bidder', 'To attract investment from wealthy individuals or angel investors', 'BS Information Systems', '3'),
(432, 'What does the term \"lean startup\" refer to in the field of technopreneurship?', 'A startup that has a small number of employees', 'A startup with a substantial marketing budget', 'A startup focused on generating profit from day one', 'A startup that seeks to create a minimum viable product as quickly and efficiently as possible', 'BS Information Systems', '3'),
(433, 'What is \"seed funding\" in the context of technopreneurship?', 'Funding provided to plant actual seeds for a technology product', 'Funding for research and development of new tech gadgets', 'Funding for mature, well-established technology companies', 'The initial capital raised to start a technology company', 'BS Information Systems', '3'),
(434, 'What is a \"beta test\" in technopreneurship?', 'A test for software developers to assess their coding skills', 'The final release of a software product', 'A test for hardware components in a technology product', 'A limited, pre-release version of a product made available to a select group of users for testing and feedback', 'BS Information Systems', '4'),
(435, 'What does the term \"agile\" mean in the context of software development and technopreneurship?', 'The ability to move quickly in a physical sense', 'A type of programming language', 'The ability to lift heavy objects', 'A project management and software development approach that prioritizes flexibility, collaboration, and customer feedback', 'BS Information Systems', '4'),
(436, 'What is \"boot camp\" in the context of technopreneurship?', 'A type of footwear popular among tech enthusiasts', 'A marketing campaign focused on selling technology products', 'A physical fitness program for technopreneurs', 'A military-style training program for entrepreneurs', 'BS Information Systems', '4'),
(437, 'What is data mining?', 'The act of searching for data on the internet', 'The process of securely storing data in a database', 'The analysis of data for regulatory compliance', 'The process of extracting valuable information and patterns from large datasets', 'BS Information Systems', '4'),
(438, 'Which of the following is NOT a common data mining technique?', 'Clustering', 'Regression', 'Classification', 'Spelling correction', 'BS Information Systems', '4'),
(439, 'What is the purpose of association rule mining in data mining?', 'Predicting future trends and events', 'Correcting errors in a dataset', 'Storing data in a structured format', 'Discovering hidden patterns and relationships in data', 'BS Information Systems', '4'),
(440, 'Which data mining technique is used for predicting a continuous value, such as sales or temperature?', 'Classification', 'Clustering', 'Association rule mining', 'Regression', 'BS Information Systems', '4'),
(441, 'In data mining, what is meant by \"overfitting\"?', 'The process of fitting data perfectly', 'A method of making data fit a specific pattern', 'A model that is too simple and underutilizes the data', 'A model that is too complex and fits the noise in the data', 'BS Information Systems', '4'),
(442, 'What is the primary goal of clustering in data mining?', 'Predicting future values', 'Associating items in a transaction', 'Finding outliers in a dataset', 'Dividing data into groups based on similarity', 'BS Information Systems', '4'),
(443, 'What is \"data preprocessing\" in the context of data mining?', 'The process of storing data in a database', 'The analysis of data for legal compliance', 'The act of collecting data from various sources', 'Cleaning, transforming, and reducing data for better analysis', 'BS Information Systems', '4'),
(444, 'Which data mining task involves classifying data into predefined categories?', 'Regression', 'Clustering', 'Association rule mining', 'Classification', 'BS Information Systems', '4'),
(445, 'What is \"supervised learning\" in data mining?', 'A technique for mining unstructured data', 'A method for cleaning data', 'A type of database management system', 'A machine learning technique where the model is trained with labeled data', 'BS Information Systems', '4'),
(446, 'What is the \"apriori algorithm\" used for in data mining?', 'Clustering similar data', 'Predicting future stock market trends', 'Analyzing text data', 'Discovering frequent item sets in transaction data', 'BS Information Systems', '4'),
(447, 'In data mining, what does the acronym \"EDA\" stand for?', 'Electronic Data Analysis', 'Efficient Data Aggregation', 'Excessive Data Augmentation', 'Exploratory Data Analysis', 'BS Information Systems', '4'),
(448, 'What is the primary goal of anomaly detection in data mining?', 'Predicting future stock market trends', 'Grouping similar data points together', 'Creating associations between items in a transaction', 'Identifying unusual patterns or data points that do not conform to expected behavior', 'BS Information Systems', '4'),
(449, 'Which data mining technique is used to discover frequent item sets in transaction data?', 'Regression', 'Clustering', 'Dimensionality reduction', 'Association rule mining', 'BS Information Systems', '4'),
(450, 'What is the role of \"feature selection\" in data mining?', 'Selecting features for data visualization', 'Removing all features from a dataset', 'Replacing features with labels', 'Identifying which features are important for building a predictive model', 'BS Information Systems', '4'),
(451, 'Which type of data mining task is associated with finding relationships between different types of data?', 'Classification', 'Clustering', 'Regression', 'Association rule mining', 'BS Information Systems', '4'),
(452, 'What does \"K-means\" refer to in data mining?', 'The number of features in a dataset', 'A supervised learning algorithm', 'A regression model', 'A clustering algorithm that partitions data into K clusters', 'BS Information Systems', '4'),
(453, 'What is \"cross-validation\" in the context of data mining?', 'Validating data before it is used in analysis', 'A type of data preprocessing technique', 'A method for removing outliers from data', 'A process of dividing a dataset into training and testing sets to evaluate model performance', 'BS Information Systems', '4'),
(454, 'What is the purpose of \"ensemble learning\" in data mining?', 'Generating random data for analysis', 'Reducing the dimensionality of data', 'Conducting data visualization', 'Combining predictions from multiple models to improve accuracy and robustness', 'BS Information Systems', '4'),
(455, 'What is \"text mining\" in data mining?', 'A method for removing irrelevant data from a dataset', 'A way to visualize data', 'A process of transforming data into numerical values', 'A technique for extracting information from unstructured text data', 'BS Information Systems', '4'),
(456, 'In data mining, what is the goal of \"anonymization\"?', 'To make data more difficult to access', 'To replace data with random values', 'To increase the speed of data processing', 'To protect sensitive information by removing or altering personal identifiers', 'BS Information Systems', '4'),
(457, 'What is Business Intelligence (BI)?', 'A method for securing business data', 'A process for analyzing business opportunities', 'A method for reducing business expenses', 'A technology-driven process for transforming data into meaningful information for business analysis', 'BS Information Systems', '4'),
(458, 'Which of the following is a primary goal of Business Intelligence?', 'Maximizing employee productivity', 'Minimizing customer interactions', 'Reducing the number of competitors', 'Providing insights for informed decision-making', 'BS Information Systems', '4'),
(459, 'What is a key component of a Business Intelligence system?', 'Financial accounting software', 'Social media management platforms', 'Email marketing software', 'Data visualization tools', 'BS Information Systems', '4'),
(460, 'What does the term \"dashboard\" refer to in Business Intelligence?', 'The front door of a company\'s office', 'A type of computer monitor', 'A software tool for managing customer relationships', 'A visual representation of key performance indicators and data for quick decision-making', 'BS Information Systems', '4'),
(461, 'In Business Intelligence, what does OLAP stand for?', 'Online Learning and Prediction', 'On-Demand Link Analysis Platform', 'Operational Logistics and Analysis Process', 'Online Analytical Processing', 'BS Information Systems', '4'),
(462, 'Which data analysis technique is used to discover trends and patterns within historical data in Business Intelligence?', 'Classification', 'Regression', 'Association rule mining', 'Clustering', 'BS Information Systems', '4'),
(463, 'What is the role of data warehousing in Business Intelligence?', 'Storing data for long-term archival purposes', 'Creating real-time data reports', 'Conducting data visualization', 'Providing a central repository for storing and managing data for analysis', 'BS Information Systems', '4'),
(464, 'Which of the following is NOT a common type of Business Intelligence tool or software?', 'Business Analytics Software', 'Data Mining Software', 'Enterprise Resource Planning (ERP) Software', 'Customer Relationship Management (CRM) Software', 'BS Information Systems', '4'),
(465, 'What is the primary advantage of self-service BI?', 'Reduced data security', 'Increased dependence on IT departments', 'A decrease in data accuracy', 'Empowering business users to access and analyze data without IT intervention', 'BS Information Systems', '4'),
(466, 'What is \"ETL\" in the context of Business Intelligence?', 'Electronic Transaction Language', 'Executive Training and Leadership', 'Enterprise Testing and Launch', 'Extract, Transfer, and Load – a process of extracting data from various sources, transforming it, and loading it into a data warehouse', 'BS Information Systems', '4'),
(467, 'What is the main purpose of a \"data mart\" in Business Intelligence?', 'To store historical data for archival purposes', 'To provide real-time data analytics', 'To handle email marketing campaigns', 'To serve as a small, specialized data repository for a specific business unit or department', 'BS Information Systems', '4'),
(468, 'Which term describes the process of analyzing large volumes of data to discover insights and patterns?', 'Data extraction', 'Data visualization', 'Data storage', 'Data mining', 'BS Information Systems', '4'),
(469, 'What is \"predictive analytics\" in the context of Business Intelligence?', 'The process of analyzing historical data to make informed business decisions', 'The practice of archiving data for future use', 'The process of data cleaning and transformation', 'The use of statistical algorithms and machine learning techniques to identify future trends and outcomes', 'BS Information Systems', '4'),
(470, 'In Business Intelligence, what is \"ETL\" short for?', 'Efficient Time Logging', 'Enhanced Text Language', 'Enterprise Testing Lifecycle', 'Extract, Transform, Load', 'BS Information Systems', '4'),
(471, 'What does the term \"OLAP cube\" refer to in Business Intelligence?', 'A 3D visualization tool', 'A geometric shape used in data analysis', 'A type of pie chart', 'A data structure for multidimensional analysis of data', 'BS Information Systems', '4'),
(472, 'What is a \"KPI\" in Business Intelligence?', 'Key Project Investment – the budget allocated for business improvement projects', 'Knowledge Processing Institute – an academic organization focused on data analysis', 'Keyboard and Peripheral Interface – a hardware device for data entry', 'Key Performance Indicator – a measurable value that demonstrates how effectively a company is achieving its key objectives', 'BS Information Systems', '4'),
(473, 'What is \"data granularity\" in Business Intelligence?', 'The size of a data warehouse', 'The speed at which data is collected', 'The number of users with access to data', 'The extent to which data is detailed or summarized', 'BS Information Systems', '4'),
(474, 'What is the role of a \"BI dashboard\" in Business Intelligence?', 'To track the movement of business executives', 'To store business documents', 'To conduct market research', 'To present key business metrics and performance indicators in a visual format', 'BS Information Systems', '4'),
(475, 'What is \"data lineage\" in Business Intelligence?', 'The history of data encryption techniques', 'A method for improving data accuracy', 'The process of data cleaning and transformation', 'A process of identifying the source of data and how it moves through an organization', 'BS Information Systems', '4'),
(476, 'In Business Intelligence, what is the role of a \"BI analyst\"?', 'A specialist responsible for cleaning and storing data', 'A marketing professional', 'An expert in visual design and data presentation', 'A professional who interprets data, creates reports, and provides insights to support business decision-making', 'BS Information Systems', '4'),
(477, 'What is the primary goal of analytics applications?', 'To create complex spreadsheets', 'To collect and store data', 'To generate automated reports', 'To extract insights and valuable information from data', 'BS Information Systems', '4'),
(478, 'What is the role of a data analyst in the context of analytics applications?', 'To design user interfaces for software applications', 'To manage data storage and backup', 'To develop machine learning models', 'To interpret data and generate meaningful insights', 'BS Information Systems', '4'),
(479, 'What is the primary benefit of using data visualization in analytics applications?', 'To make data storage more efficient', 'To create complex databases', 'To conduct market research', 'To communicate data insights effectively and facilitate understanding', 'BS Information Systems', '4'),
(480, 'Which term refers to the process of identifying patterns and trends in data using statistical techniques?', 'Data entry', 'Data visualization', 'Data storage', 'Data analysis', 'BS Information Systems', '4'),
(481, 'What does the acronym \"BI\" stand for in the context of analytics applications?', 'Basic Integration', 'Binary Interpretation', 'Best Implementation', 'Business Intelligence', 'BS Information Systems', '4'),
(482, 'What is \"predictive analytics\" in analytics applications?', 'Analyzing past data to understand historical trends', 'Generating summary reports of current data', 'Storing data for archival purposes', 'Using statistical models and machine learning algorithms to predict future outcomes', 'BS Information Systems', '4'),
(483, 'In analytics applications, what is a \"segmentation analysis\"?', 'The process of dividing data into small pieces', 'A method for data storage', 'A type of data visualization', 'An analysis of data to identify distinct groups or segments within a dataset', 'BS Information Systems', '4'),
(484, 'What is the primary goal of a \"descriptive analytics\" approach in analytics applications?', 'Predicting future trends', 'Generating ad-hoc reports', 'Conducting market research', 'Identifying patterns and trends in historical data', 'BS Information Systems', '4'),
(485, 'What is the role of a \"data scientist\" in analytics applications?', 'A professional who designs user interfaces', 'A specialist in data visualization', 'A software developer', 'An expert in data analysis and modeling', 'BS Information Systems', '4'),
(486, 'What does \"ETL\" stand for in the context of analytics applications?', 'Effective Task List', 'Email Transmission Log', 'Efficient Text Layout', 'Extract, Transform, Load - a process of extracting data from various sources, transforming it, and loading it into a data warehouse', 'BS Information Systems', '4'),
(487, 'In analytics applications, what is \"prescriptive analytics\"?', 'Analyzing past data to understand historical trends', 'Predicting future outcomes using statistical models', 'Generating summary reports of current data', 'Recommending actions to optimize outcomes based on data and models', 'BS Information Systems', '4'),
(488, 'What is the primary goal of \"data cleansing\" in analytics applications?', 'Increasing the volume of data', 'Storing data in a secure location', 'Generating data reports', 'Ensuring data accuracy and consistency by correcting errors and inconsistencies', 'BS Information Systems', '4'),
(489, 'What is \"A/B testing\" in the context of analytics applications?', 'A testing method for computer hardware components', 'A method for creating data visualizations', 'A process for data storage and archival', 'A technique for comparing two versions of a webpage, app, or content to determine which performs better', 'BS Information Systems', '4'),
(490, 'In analytics applications, what does \"data governance\" entail?', 'The process of creating data backups', 'Data analysis and modeling', 'Creating data visualizations', 'The management and oversight of data quality, security, and compliance within an organization', 'BS Information Systems', '4'),
(491, 'What is the role of \"correlation analysis\" in analytics applications?', 'Analyzing historical trends', 'Creating data backups', 'Data visualization', 'Identifying relationships between variables and assessing how they change together', 'BS Information Systems', '4'),
(492, 'What is the main objective of \"customer analytics\" in analytics applications?', 'Evaluating employee performance', 'Managing data storage', 'Predicting stock market trends', 'Analyzing customer data to gain insights and improve customer relationships', 'BS Information Systems', '4'),
(493, 'What is the role of a \"dashboard\" in analytics applications?', 'A type of computer monitor', 'A platform for collecting customer feedback', 'A tool for email marketing', 'A visual representation of key performance indicators and data for quick decision-making', 'BS Information Systems', '4');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `scores_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `curriculum` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `classification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`scores_id`, `student_id`, `name`, `curriculum`, `year`, `section`, `score`, `classification`) VALUES
(7, '2019-0154-PC', 'update, test user', 'BS Information Systems', '4', 'A', '0', 'pass'),
(8, '2023-0123-PC', 'cruz, juan dela cruz', 'BS Information Systems', '2', 'A', '11', 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `student_id` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `curriculum` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`student_id`, `firstName`, `middleName`, `lastName`, `curriculum`, `year`, `section`, `password`) VALUES
('2019-0154-PC', 'test', 'user', 'update', 'BS Information Systems', '4', 'A', '123'),
('2023-0003-PC', 'Will', 'T', 'Bon', 'BS Information Technology', '1', 'A', 'mmm'),
('2023-0123-PC', 'juan', 'dela cruz', 'cruz', 'BS Information Systems', '2', 'A', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`scores_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `scores_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
