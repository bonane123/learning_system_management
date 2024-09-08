-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 07:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Software Development', 'software-development', 'upload/category/1796324543069572.jpeg', NULL, NULL),
(4, 'Ethical Hacking', 'ethical-hacking', 'upload/category/1796324576396709.jpg', NULL, NULL),
(5, 'Analytics', 'analytics', 'upload/category/1796324597291573.jpeg', NULL, NULL),
(6, 'Finance & Accounting', 'finance-&-accounting', 'upload/category/1796327894599835.jpg', NULL, NULL),
(7, 'Business', 'business', 'upload/category/1796327964136939.jpg', NULL, NULL),
(8, 'Architecture', 'architecture', 'upload/category/1796328051815115.jpg', NULL, NULL),
(9, 'Design', 'design', 'upload/category/1796485435910378.jpg', NULL, NULL),
(10, 'Personal Development', 'personal-development', 'upload/category/1796485614347890.jpeg', NULL, NULL),
(11, 'Marketing', 'marketing', 'upload/category/1796485687350072.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` varchar(255) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'BONUS-BUY', '20', '2024-07-21', 1, '2024-07-18 04:59:35', '2024-07-18 04:59:35'),
(3, 'EXPIRED', '10', '2024-06-08', 1, '2024-06-08 10:03:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `course_title` text DEFAULT NULL,
  `course_name` text DEFAULT NULL,
  `course_slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `prerequisites` text DEFAULT NULL,
  `bestseller` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `highestrated` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `subcategory_id`, `instructor_id`, `course_image`, `course_title`, `course_name`, `course_slug`, `description`, `video`, `label`, `duration`, `resources`, `certificate`, `selling_price`, `discount_price`, `prerequisites`, `bestseller`, `featured`, `highestrated`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 4, 2, 'upload/course/thambnail/1796503365555342.png', '1. Laravel 10 Build Complete Learning Management System LMS A-Z', 'Laravel 10 Build LMS', 'laravel-10-build-lms', '<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>Laravel is a first development life cycle and less code functionality</p>\r\n</li>\r\n<li>\r\n<p>it\'s easy to learn</p>\r\n</li>\r\n<li>\r\n<p>making web applications faster</p>\r\n</li>\r\n<li>\r\n<p>configuration error and exception handling</p>\r\n</li>\r\n<li>\r\n<p>automation testing work.</p>\r\n</li>\r\n<li>\r\n<p>URL Routing Configuration is very high in Laravel.</p>\r\n</li>\r\n<li>\r\n<p>Scheduling tasks configuration and management</p>\r\n</li>\r\n</ul>', 'upload/course/video/1713279119.mp4', 'Intermediate', '53', '4', 'No', 2000, 950, '<p><strong>What is your benefit?</strong></p>\r\n<p>I guarantee you\'ll come away with new skills and a deeper understanding of&nbsp;<strong>Laravel 10</strong>&nbsp;So, what are you waiting for?&nbsp; Enroll in our&nbsp;<strong>Laravel 10 Build Complete Learning Management System Application</strong>&nbsp;course. You will be able to understand how to complete one project, and how to handle project bugs. You will be able to start work for your client. Add this project to your portfolio and university assignment And most importantly you will get my support within 24 hours. If you have any issues just let me know about this I will be in your touch.</p>\r\n<p><strong>What is the Best Part of this Course?</strong></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>Complete Advance Project With Laravel 10</p>\r\n</li>\r\n<li>\r\n<p>Build Complete Learning Management System Project A-Z</p>\r\n</li>\r\n<li>\r\n<p>User Role Management</p>\r\n</li>\r\n<li>\r\n<p>Multi-Authentication as User-Instructor-Admin</p>\r\n</li>\r\n<li>\r\n<p>User Roles and Permission</p>\r\n</li>\r\n<li>\r\n<p>Multi Admin For Store</p>\r\n</li>\r\n<li>\r\n<p>Advance Course Apply Coupon From Admin And Instructor</p>\r\n</li>\r\n<li>\r\n<p>Course Review and Rating System</p>\r\n</li>\r\n<li>\r\n<p>Course Discount Price</p>\r\n</li>\r\n<li>\r\n<p>Multiple Online Payment Getaway System</p>\r\n</li>\r\n<li>\r\n<p>Course Mailing System</p>\r\n</li>\r\n<li>\r\n<p>Course Wishlist Option</p>\r\n</li>\r\n<li>\r\n<p>Advance Course Add to Cart Option</p>\r\n</li>\r\n<li>\r\n<p>Advance JavaScript Uses</p>\r\n</li>\r\n<li>\r\n<p>Site Setting Option</p>\r\n</li>\r\n<li>\r\n<p>Image Upload System</p>\r\n</li>\r\n<li>\r\n<p>Multiple Image Upload System</p>\r\n</li>\r\n<li>\r\n<p>Adding Professional Theme for Backend</p>\r\n</li>\r\n<li>\r\n<p>Adding Professional Theme for Frontend</p>\r\n</li>\r\n<li>\r\n<p>Multi Auth with Breeze Package</p>\r\n</li>\r\n<li>\r\n<p>Course Blog Management</p>\r\n</li>\r\n<li>\r\n<p>Generate Order Invoice&nbsp; in PDF</p>\r\n</li>\r\n<li>\r\n<p>Change Password Option</p>\r\n</li>\r\n<li>\r\n<p>Lecture By Lecture Project Source Code</p>\r\n</li>\r\n<li>\r\n<p>Checkout Page Setup</p>\r\n</li>\r\n<li>\r\n<p>Live Chat System</p>\r\n</li>\r\n<li>\r\n<p>Dynamic Email Configuration</p>\r\n</li>\r\n<li>\r\n<p>Create Custom Pagination</p>\r\n</li>\r\n<li>\r\n<p>Import and Export Data From Csv or Excel File&nbsp;</p>\r\n</li>\r\n<li>\r\n<p>And much more functions ..</p>\r\n</li>\r\n</ul>', '1', NULL, NULL, 1, '2024-04-16 12:51:59', '2024-04-18 19:23:59'),
(3, 3, 4, 2, 'upload/course/thambnail/1796596303340550.jpg', 'The Complete JavaScript Course 2024: From Zero to Expert!', 'JavaScript', 'javascript', '<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p><strong><em>The #1 bestselling JavaScript&nbsp;course on Udemy!</em></strong></p>\r\n<p><em>\"Really, really well made course. Super in-depth, with great challenges and projects that will solidify your Javascript understanding. I found the lectures were paced perfectly -- Jonas doesn\'t skip over anything that might be useful to a JS developer\"</em>&nbsp;&mdash; Carson Bartholomew</p>\r\n<p>&nbsp;</p>\r\n<p>JavaScript is the most popular programming language in the world. It powers the entire modern web. It provides millions of high-paying jobs all over the world.</p>\r\n<p>That\'s why you want to learn JavaScript too. And you came to the right place!</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why is this the right JavaScript course for you?</strong></p>\r\n<p><em>This is the most complete and in-depth JavaScript course on Udemy (and maybe the entire internet!). It\'s an all-in-one package that will take you from the very fundamentals of JavaScript, all the way to building modern and complex applications.</em></p>\r\n<p>You will learn modern JavaScript from the very beginning, step-by-step. I will guide you through&nbsp;<strong>practical and fun code examples</strong>,&nbsp;<strong>important theory</strong>&nbsp;about how JavaScript works behind the scenes, and&nbsp;<strong>beautiful and complete projects</strong>.</p>\r\n<p>You will become ready to continue learning advanced&nbsp;<strong>front-end frameworks</strong>&nbsp;like React, Vue, Angular, or Svelte.</p>\r\n<p>You will also learn how to think like a developer, how to plan application features, how to architect your code, how to debug code, and a lot of other real-world skills that you will need in your developer job.</p>\r\n<p>And unlike other courses, this one actually contains beginner, intermediate, advanced, and even expert topics, so&nbsp;<strong>you don\'t have to buy any other course in order to master JavaScript</strong>&nbsp;from the ground up!</p>\r\n<p>But... You don\'t have to go into all these topics. This is a huge course, because, after all, it\'s \"The Complete JavaScript Course\". In fact, it\'s like many courses in one!&nbsp;<strong>But you can become an excellent developer by watching only parts of the course</strong>. That\'s why I built this course in a very modular way, and designed pathways that will take you through the course faster.</p>\r\n<p><em>By the end of the course, you will have the knowledge and confidence that you need in order to ace your job interviews and become a professional developer.</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why am I the right JavaScript teacher for you?</strong></p>\r\n<p>My name is Jonas, I\'m an experienced web developer and designer, and one of Udemy\'s top instructors. I have been teaching this bestselling course since 2016 to over 850,000 developers, always listening to feedback and understanding exactly how students actually learn.</p>\r\n<p>I know how students learn JavaScript and what they need in order to master it. And with that knowledge, I designed the ideal course curriculum.&nbsp;<strong>It\'s a unique blend of real-world projects, deep explanations, theory lectures, and challenges</strong>, that will take you from zero to an expert and confident JavaScript developer in just a couple of weeks.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>So what exactly is covered in the course?</strong></p>\r\n<ul>\r\n<li>\r\n<p>Build 5 beautiful real-world projects for your portfolio! In these projects, you will learn how to plan and architect your applications using flowcharts and common JavaScript patterns</p>\r\n</li>\r\n<li>\r\n<p>Master the JavaScript fundamentals: variables, if/else, operators, boolean logic, functions, arrays, objects, loops, strings, and more</p>\r\n</li>\r\n<li>\r\n<p>Learn modern JavaScript (ES6+) from the beginning: arrow functions, destructuring, spread operator, default arguments, optional chaining, and more</p>\r\n</li>\r\n<li>\r\n<p>How JavaScript works behind the scenes: engines, the call stack, hoisting, scoping, the \'this\' keyword, reference values, and more.</p>\r\n</li>\r\n<li>\r\n<p>Deep dive into functions: arrow functions, first-class and higher-order functions, bind, and closures.</p>\r\n</li>\r\n<li>\r\n<p>Deep dive into object-oriented programming: prototypal inheritance, constructor functions (ES5), classes (ES6), encapsulation, abstraction, inheritance, and polymorphism. [This is like a small standalone course]</p>\r\n</li>\r\n<li>\r\n<p>Deep dive into asynchronous JavaScript: the event loop, promises, async/await, and error handling. You will use these to access data from third-party APIs with AJAX calls. [This is like a small standalone course]</p>\r\n</li>\r\n<li>\r\n<p>Learn modern tools that are used by professional web developers: NPM, Parcel, Babel, and ES6 modules</p>\r\n</li>\r\n</ul>\r\n<p>Check out the course curriculum for an even more detailed overview of the content :)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>This is what\'s also included in the package:</strong></p>\r\n<ul>\r\n<li>\r\n<p>Up-to-date HD-quality videos, that are easy to search and reference&nbsp;<strong>(<em>great for Udemy Business learners</em>)</strong></p>\r\n</li>\r\n<li>\r\n<p>Professional English captions (not the&nbsp;auto-generated ones)</p>\r\n</li>\r\n<li>\r\n<p>Downloadable starter code and final code for each section</p>\r\n</li>\r\n<li>\r\n<p>Downloadable slides for 40+ theory videos</p>\r\n</li>\r\n<li>\r\n<p>25+ coding challenges and 25+ assignments to practice your new skills</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Does any of these look like you? If so, then start this adventure today, and join me and 850,000+ other developers in the only JavaScript course that you will&nbsp;ever need!</strong></p>\r\n</div>\r\n<div class=\"styles--audience--a977-\" data-purpose=\"target-audience\">\r\n<h2 class=\"ud-heading-xl styles--audience__title--lQoa5\">Who this course is for:</h2>\r\n<ul class=\"styles--audience__list----YbP\">\r\n<li>Take this course if you want to gain a true and deep understanding of JavaScript</li>\r\n<li>Take this course if you have been trying to learn JavaScript but: 1) still don\'t really understand JavaScript, or 2) still don\'t feel confident to code real apps</li>\r\n<li>Take this course if you\'re interested in using a library/framework like React, Angular, Vue or Node in the future</li>\r\n<li>Take this course if you already know JavaScript and are looking for an advanced course. This course includes expert topics!</li>\r\n<li>Take this course if you want to get started with programming: JavaScript is a great first language!</li>\r\n</ul>\r\n</div>', 'upload/course/video/1713367751.mp4', 'Advanced', '42', '12', 'Yes', 8000, 1000, '<ul class=\"ud-unstyled-list ud-block-list\">\n<li>\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\n<div class=\"ud-block-list-item-content\">No coding experience is necessary to take this course! I take you from beginner to expert!</div>\n</div>\n</li>\n<li>\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\n<div class=\"ud-block-list-item-content\">Any computer and OS will work &mdash; Windows, macOS or Linux. We will set up your text editor the course.</div>\n</div>\n</li>\n<li>\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\n<div class=\"ud-block-list-item-content\">A basic understanding of HTML and CSS is a plus, but not a must! The course includes an HTML and CSS crash course.</div>\n</div>\n</li>\n</ul>', '1', NULL, '1', 1, '2024-04-17 13:29:11', '2024-07-18 09:04:20'),
(4, 7, 6, 2, 'upload/course/thambnail/1796709750189269.jpeg', 'Entrepreneurship in Emerging Economies', 'New Ideas for Nonprofit Leaders Webinar', 'new-ideas-for-nonprofit-leaders-webinar', '<p>Professor Arthur Brooks discusses cutting-edge concepts that tie tactics of the most effective nonprofit leaders back to the basics of human connection in this free webinar.</p>', 'upload/course/video/1713737741.mp4', 'Beginner', '93', '25', 'Yes', 10000, 1500, '<ul class=\"b_vList b_divsec b_bullet\">\r\n<li data-priority=\"\">4P Model for Strategic Leadership Podcasts</li>\r\n<li data-priority=\"\">The Science of Corresponding with Busy People Webinar</li>\r\n<li data-priority=\"\">Global News &amp; Technology Leadership in Challenging Times</li>\r\n<li data-priority=\"\">Entrepreneurship in Emerging Economies</li>\r\n<li data-priority=\"\">Improving Your Business Through a Culture of Health</li>\r\n<li data-priority=\"\">CS50\'s Computer Science for Business Professionals</li>\r\n<li data-priority=\"\">Exercising Leadership: Foundational Principles</li>\r\n<li data-priority=\"\">Logistics and Supply Chain Management</li>\r\n<li data-priority=\"\">Management Information Systems</li>\r\n<li data-priority=\"\">Marketing</li>\r\n</ul>', NULL, NULL, NULL, 1, '2024-04-18 19:32:23', '2024-04-21 20:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE `course_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `goal_name` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_goals`
--

INSERT INTO `course_goals` (`id`, `course_id`, `goal_name`, `created_at`, `updated_at`) VALUES
(17, 2, 'Complete Advance Project With Laravel 10', '2024-04-17 13:10:46', '2024-04-17 13:10:46'),
(18, 2, 'Build Complete Learning Management System Project A-Z', '2024-04-17 13:10:46', '2024-04-17 13:10:46'),
(19, 2, 'Advance Course Apply Coupon From Admin And Instructor', '2024-04-17 13:10:46', '2024-04-17 13:10:46'),
(20, 2, 'Multiple Online Payment Getaway System', '2024-04-17 13:10:46', '2024-04-17 13:10:46'),
(21, 2, 'Good Looking UI', '2024-04-17 13:10:46', '2024-04-17 13:10:46'),
(22, 3, 'Become an advanced, confident, and modern JavaScript developer from scratch', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(23, 3, 'Become job-ready by understanding how JavaScript really works behind the scenes', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(24, 3, 'JavaScript fundamentals: variables, if/else, operators, boolean logic, functions, arrays, objects, loops, strings, etc.', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(25, 3, 'Modern OOP: Classes, constructors, prototypal inheritance, encapsulation, etc.', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(26, 3, 'Asynchronous JavaScript: Event loop, promises, async/await, AJAX calls and APIs', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(27, 3, 'Modern tools for 2022 and beyond: NPM, Parcel, Babel and ES6 modules', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(28, 3, 'Get fast and friendly support in the Q&A area', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(29, 3, 'Build 6 beautiful real-world projects for your portfolio (not boring toy apps)', '2024-04-17 13:29:11', '2024-04-17 13:29:11'),
(30, 4, '4P Model for Strategic Leadership Podcasts', '2024-04-18 19:32:23', '2024-04-18 19:32:23'),
(31, 4, 'Management Information Systems', '2024-04-18 19:32:23', '2024-04-18 19:32:23'),
(32, 4, 'Global News & Technology Leadership in Challenging Times', '2024-04-18 19:32:23', '2024-04-18 19:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lecture_title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `course_id`, `section_id`, `lecture_title`, `video`, `url`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'Introduction to project - What We Will Buid', NULL, 'https://www.youtube.com/watch?v=eUNWzJUvkCA', 'Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat. Accumsan tortor posuere ac ut consequat semper viverra. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar.\r\n\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy\r\n\r\n- Lorem ipsum dolor sit amet, consectetur.\r\n- Lorem ipsum dolor sit amet, consectetur.\r\n- Lorem ipsum dolor sit amet, consectetur.', '2024-04-18 11:55:47', '2024-04-18 17:10:13'),
(2, 2, 5, 'Breeze Authentication', NULL, 'https://vimeo.com/88888213', 'The core java material you need to learn java development is covered in the first seven sections (around 14 hours in total). The Java Basics are covered in those sections. The rest of the course covers intermediate, advanced, and optional material you do not technically need to go through.\n\nWho this course is for:\nAnyone who wants to become a computer programmer\nAnyone who wants to become a computer programmer\nAnyone who wants to become a computer programmer', '2024-04-18 11:56:38', '2024-04-18 11:56:38'),
(3, 2, 4, 'Setting up environment', NULL, 'https://vimeo.com/54058030', 'The core java material you need to learn java development is covered in the first seven sections (around 14 hours in total). The Java Basics are covered in those sections. The rest of the course covers intermediate, advanced, and optional material you do not technically need to go through.\n\nWho this course is for:\nAnyone who wants to become a computer programmer\nAnyone who wants to become a computer programmer\nAnyone who wants to become a computer programmer', '2024-04-18 11:57:20', '2024-04-18 11:57:20'),
(4, 2, 4, 'Dashboard Page Segmentation', NULL, 'https://vimeo.com/197536889', 'Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy\n\n- Lorem ipsum dolor sit amet, consectetur.\n\n- Lorem ipsum dolor sit amet, consectetur.\n\n- Lorem ipsum dolor sit amet, consectetur.\n\nAre you aiming to get your first Java Programming job but struggling to find out what skills employers want and which course will give you those skills?\n\nThis course is designed to give you the Java skills you need to get a job as a Java developer. By the end of the course, you will understand Java extremely well and be able to build your own Java apps and be productive as a software developer.\n\nThe core java material you need to learn java development is covered in the first seven sections (around 14 hours in total). The Java Basics are covered in those sections. The rest of the course covers intermediate, advanced, and optional material you do not technically need to go through.', '2024-04-18 11:59:55', '2024-04-18 11:59:55'),
(5, 3, 1, 'Async / Await Function', NULL, 'https://www.youtube.com/watch?v=9j1dZwFEJ-c', 'The async function declaration creates a binding of a new async function to a given name. The await keyword is permitted within the function body, enabling asynchronous, promise-based behavior to be written in a cleaner style and avoiding the need to explicitly configure promise chains.\n\nYou can also define async functions using the async function ex...\n\nasync function name(param0) {\nstatements\n}\nasync function name(param0, param1) {\nstatements\n}\nasync function name(param0, param1, /* …, */ paramN) {\nstatements', '2024-04-18 17:21:51', '2024-04-18 17:21:51'),
(7, 3, 2, 'Create Project Directories', NULL, 'https://www.youtube.com/watch?v=3a0I8ICR1Vg', 'To set up a JavaScript project, you can follow these steps:\nCreate a project directory.\nAdd a package.json file.\nSetup Git.\nInstall the dependencies you need.\nAdd scripts.\nStart coding!\nAlternatively, you can create a new JavaScript project in your IDE by selecting File | New | Project from the main menu or clicking the New Project button on the Welcome screen3.\nLearn more:', '2024-04-18 17:26:10', '2024-04-18 17:26:10'),
(10, 3, 1, 'Closure in Javascript', NULL, 'https://www.youtube.com/watch?v=3a0I8ICR1Vg', 'This is the basic of javascript', '2024-04-18 18:12:12', '2024-04-18 18:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `section_title`, `created_at`, `updated_at`) VALUES
(1, 3, 'Section 1 : Introduction to JavaScript', NULL, NULL),
(2, 3, 'Section 2 : Project Setup', NULL, NULL),
(4, 2, 'Section 1: Introduction', NULL, NULL),
(5, 2, 'Section 2: Multi Auth with Breeze Create Auth for User / Instructor / Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_14_082856_create_categories_table', 2),
(7, '2024_04_14_163032_create_sub_categories_table', 3),
(8, '2024_04_16_074409_create_courses_table', 4),
(9, '2024_04_16_075713_create_course_goals_table', 4),
(10, '2024_04_18_080624_create_course_sections_table', 5),
(12, '2024_04_18_080646_create_course_lectures_table', 6),
(13, '2024_04_28_083804_create_wish_lists_table', 7),
(14, '2024_07_18_072928_create_coupons_table', 8),
(15, '2024_07_18_143814_create_payments_table', 9),
(16, '2024_07_18_143836_create_orders_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_id`, `user_id`, `course_id`, `instructor_id`, `image`, `course_title`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, 2, NULL, 'New Ideas for Nonprofit Leaders Webinar', 1500, '2024-07-18 14:09:01', '2024-07-18 14:09:01'),
(2, 1, 3, 2, 2, NULL, 'Laravel 10 Build LMS', 950, '2024-07-18 14:09:01', '2024-07-18 14:09:01'),
(7, 10, 4, 4, 2, NULL, 'New Ideas for Nonprofit Leaders Webinar', 1500, '2024-07-18 17:54:07', '2024-07-18 17:54:07'),
(8, 11, 4, 2, 2, NULL, 'Laravel 10 Build LMS', 950, '2024-07-18 18:03:11', '2024-07-18 18:03:11'),
(10, 14, 4, 3, 2, NULL, 'JavaScript', 1000, '2024-07-18 18:19:05', '2024-07-18 18:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cash_delivery` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `address`, `cash_delivery`, `total_amount`, `payment_type`, `invoice_no`, `order_date`, `order_month`, `order_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bob', 'user@gmail.com', '0783553581', 'Gasabo - Kigali', 'stripe', '1960', 'Direct Payment', 'EOS53575169', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 14:09:01', '2024-07-18 14:09:01'),
(2, 'Bob', 'user@gmail.com', '0783553581', 'Gasabo - Kigali', 'handcash', '1200', 'Direct Payment', 'EOS28024457', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 14:10:33', '2024-07-18 14:10:33'),
(3, 'Bob', 'user@gmail.com', '0783553581', 'Gasabo - Kigali', 'handcash', '760', 'Direct Payment', 'EOS97597750', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 14:11:59', '2024-07-18 14:11:59'),
(4, 'Bob', 'user@gmail.com', '0783553581', 'Gasabo - Kigali', 'handcash', '800', 'Direct Payment', 'EOS24031080', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 14:17:16', '2024-07-18 14:17:16'),
(5, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '1200', 'Direct Payment', 'EOS66838639', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 14:46:23', '2024-07-18 14:46:23'),
(6, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '760', 'Direct Payment', 'EOS38047648', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 15:01:52', '2024-07-18 15:01:52'),
(7, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '1200', 'Direct Payment', 'EOS56901592', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 15:12:33', '2024-07-18 15:12:33'),
(10, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'stripe', '1200', 'Direct Payment', 'INZIRA54352895', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 17:54:07', '2024-07-18 17:54:07'),
(11, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '760', 'Direct Payment', 'INZIRA48590902', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 18:03:10', '2024-07-18 18:03:10'),
(12, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '760', 'Direct Payment', 'INZIRA86128570', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 18:04:47', '2024-07-18 18:04:47'),
(13, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'handcash', '800', 'Direct Payment', 'INZIRA26841151', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 18:05:30', '2024-07-18 18:05:30'),
(14, 'Bobo', 'ndbonane@gmail.com', '0783553581', 'Kigali - Rwanda', 'stripe', '800', 'Direct Payment', 'INZIRA26724087', '18 July 2024', 'July', '2024', 'pending', '2024-07-18 18:19:05', '2024-07-18 18:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 7, 'Business Administration', 'business-administration', NULL, '2024-04-14 20:54:36'),
(2, 3, 'Mobile App', 'mobile-app', NULL, NULL),
(4, 3, 'Web Development', 'web-development', NULL, NULL),
(5, 3, 'Game Development', 'game-development', NULL, NULL),
(6, 7, 'Entrepreneurship', 'entrepreneurship', NULL, NULL),
(7, 7, 'Real Estate', 'real-estate', NULL, NULL),
(8, 6, 'Accounting', 'accounting', NULL, NULL),
(9, 6, 'Cryptocurrency', 'cryptocurrency', NULL, NULL),
(10, 6, 'Blockchain', 'blockchain', NULL, NULL),
(11, 9, 'Graphic Design', 'graphic-design', NULL, NULL),
(12, 9, 'Web Design', 'web-design', NULL, NULL),
(13, 9, 'Design Tools', 'design-tools', NULL, NULL),
(14, 10, 'Personal Transformation', 'personal-transformation', NULL, NULL),
(15, 10, 'Productivity', 'productivity', NULL, NULL),
(16, 10, 'Leadership', 'leadership', NULL, NULL),
(17, 11, 'Digital Marketing', 'digital-marketing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','instructor','user') NOT NULL DEFAULT 'user',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$DgHAeH9y4uUrFeKp/votXOw56fAHl.eyl7mH27HheM92aDWriQt3q', '202404091330bonane.jpg', '0783553581', 'Kigali, Rwanda', 'admin', '1', NULL, NULL, '2024-04-10 14:08:11'),
(2, 'Instructor', 'instrutor', 'instructor@gmail.com', NULL, '$2y$12$zFehe666v0VQgXpKIHSRoeIrE161xQDLtMZXo6DhTHn5dh.uo6lk.', '202404110850Jeannette.jpg', NULL, 'Kigali - Rwanda', 'instructor', '1', NULL, '2024-04-17 22:24:32', '2024-04-23 20:21:02'),
(3, 'Bob', 'bobo', 'user@gmail.com', NULL, '$2y$12$xKJoPqDywJZ2rkWV.OMHmushhRa1P/sFuuJze3UjkdbvGXANFAo5q', '202404132103bonane.jpg', '0783553581', 'Gasabo - Kigali', 'user', '1', NULL, NULL, '2024-04-13 19:48:40'),
(4, 'Bobo', 'bob', 'ndbonane@gmail.com', NULL, '$2y$12$KLsG5IPS/rWF4WLx6wB6kuEUr8V5PsSnhgy03L4AArIG9SuzLyEvm', NULL, '0783553581', 'Kigali - Rwanda', 'user', '0', NULL, '2024-04-06 19:01:51', '2024-07-18 03:56:28'),
(5, 'bonane', NULL, 'bonane@gmail.com', NULL, '$2y$12$BFaroHRmh90DVpdFJd9i/uM59BsQOQ.Jl97pxh0XaMHcbwGfB9iay', NULL, NULL, NULL, 'user', '1', NULL, '2024-04-11 08:16:08', '2024-04-11 08:16:08'),
(7, 'Yeobo', 'yeobo', 'yeobo@gmail.com', NULL, '$2y$12$ZoqaZZg0hpleT7tYKp.Bb.MXqK7eq5IHeY81t7XAx08297TkYy59y', NULL, '0783553581', 'KG 15 Ave, Kigali, Rwanda', 'instructor', '1', NULL, NULL, '2024-04-23 20:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '2024-05-07 15:48:58', NULL),
(2, 5, 4, '2024-05-08 12:40:52', NULL),
(3, 5, 3, '2024-05-08 15:12:49', NULL),
(7, 4, 4, '2024-06-22 12:21:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_goals`
--
ALTER TABLE `course_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_goals`
--
ALTER TABLE `course_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
