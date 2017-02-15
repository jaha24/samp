-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2016 at 05:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('ce5e6e0924aa034f82a551bc43206f50', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 1481213313, ''),
('41eef97bed7fabb3e5340df1336be6ec', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 1479568072, ''),
('8bde9f1e30d73a7f7915f76400651d0d', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36', 1477325250, '');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE IF NOT EXISTS `email_settings` (
`id` int(10) NOT NULL,
  `code` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `value` varchar(111) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `code`, `name`, `value`, `created`) VALUES
(1, 'MAILER_TYPE', 'Mailer Type', '1', 2011),
(2, 'SMTP_PORT', 'SMTP Port', '465', 2011),
(3, 'SMTP_USER', 'SMTP Username', 'hftutty', 2011),
(4, 'SMTP_PASS', 'SMTP Password', 'hfgyu', 2011),
(5, 'MAILER_MODE', 'Mailer Mode', 'html', 2011),
(6, 'DOMAIN_NAME', 'domain_name', 'testsite.com', 2011),
(7, 'IN_MAIL_SERVER', 'In Mail Server', '44545', 2011),
(8, 'OUT_MAIL_SERVER', 'Out Mail Server', '875454', 2011),
(9, 'MAIL_USER', 'Mail User Name', 'jgjgdg', 2011),
(10, 'MAIL_PASS', 'Mail Password', 'gfdj', 2011),
(11, 'MAIL_DOMAIN_PORT', 'Domain Mail Port', 'hiuytr', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `mail_subject` text CHARACTER SET utf8 NOT NULL,
  `email_body_text` text CHARACTER SET utf8 NOT NULL,
  `email_body_html` text CHARACTER SET ucs2 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `title`, `mail_subject`, `email_body_text`, `email_body_html`) VALUES
(40, 'refferal_invite', 'Refferal Invitation', '{username} has invited you to {site_name}', 'Hi user,\n\n{username} wants you to save money with {site_name}\n\n{dynamic_content}\n\n{click_here}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi User,</td>\n</tr>\n<tr>\n<td>\n<p>{username} wants you to save money with {site_name}</p>\n<p>{dynamic_content}</p>\n<p>{click_here} To Started Now!</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(44, 'tc_book_to_admin', 'Admin notification for  Travel cretid booking', ' {traveler_name} sent the reservation request by using his Travel Cretids', 'Hello Admin,\r\n\r\n{traveler_name}sent the reservation request to book the {list_title} place on {book_date} at {book_time} by using his Travel Credits.\r\n\r\nDetails as follows,\r\n\r\nTraveler Name : {traveler_name}\r\nContact Email Id : {traveler_email_id}\r\nPlace Name : {list_title}\r\nCheck in : {checkin}\r\nCheck out : {checkout}\r\nMarket Price : {market_price}\r\nPayed Amount : {payed_amount}\r\nTravel Credits : {travel_credits} \r\nHost Name : {host_name}\r\nHost Email Id : {host_email_id} \r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{traveler_name}sent the reservation request to book the {list_title} place on {book_date} at {book_time} by using his Travel Credits.</p>\r\n<p>Details as follows,</p>\r\n<p>Traveler Name : {traveler_name}</p>\r\n<p>Contact Email Id : {traveler_email_id}</p>\r\n<p>Place Name : {list_title}</p>\r\n<p>Check in : {checkin}</p>\r\n<p>Check out : {checkout}</p>\r\n<p>Market Price : {market_price}</p>\r\n<p>Payed Amount : {payed_amount}</p>\r\n<p>Travel Credits : {travel_credits}</p>\r\n<p>Host Name : {host_name}</p>\r\n<p>Host Email Id : {host_email_id}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0px;">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(45, 'tc_book_to_host', 'Host notification for  Travel cretid booking', ' {traveler_name} sent the reservation request by using his Travel Cretids', 'Hello {username},\r\n\r\n{traveler_name}sent the reservation request to book your {list_title} place on {book_date} at {book_time} by using his Travel Credits.\r\n\r\nWe will contact you with the appropriate payment.\r\n\r\nDetails as follows,\r\n\r\nTraveler Name : {traveler_name}\r\nContact Email Id : {traveler_email_id}\r\nPlace Name : {list_title}\r\nCheck in : {checkin}\r\nCheck out : {checkout}\r\nPrice : {market_price}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {username} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{traveler_name}sent the reservation request to book your {list_title} place on {book_date} at {book_time} by using his Travel Credits.</p>\r\n<p>Details as follows,</p>\r\n<p>Traveler Name : {traveler_name}</p>\r\n<p>Contact Email Id : {traveler_email_id}</p>\r\n<p>Place Name : {list_title}</p>\r\n<p>Check in : {checkin}</p>\r\n<p>Check out : {checkout}</p>\r\n<p>Price : {market_price}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 0 10px 0;">Admin,</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(46, 'admin_mass_email', 'Admin mass email', '{subject}', 'Hi User,\r\n\r\n{dynamic_content}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi User,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{dynamic_content}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(47, 'user_reference', 'Reference', 'Write {username} a reference on {site_name}', 'Hi,\n\n{username} is asking you to provide a reference that they can display publicly on their {site_name} profile. {site_name} is a community marketplace for accommodations that is built on trust and reputation. A reference from you would really help build their reputation with the community.\nA reference on {site_name} can help {username} find a cool place to stay or host interesting travelers. \n\n{click_here} to have a Reference for {username}.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi,</td>\n</tr>\n<tr>\n<td>\n<p>{username} is asking you to provide a reference that they can display publicly on their {site_name} profile. {site_name} is a community marketplace for accommodations that is built on trust and reputation. A reference from you would really help build their reputation with the community. A reference on {site_name} can help {username} find a cool place to stay or host interesting travelers.</p>\n<p>{click_here} to have a Reference for {username}.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(101, 'reference_receive', 'Reference Receive', 'You have received a new reference on {site_name}!', 'Hi {username},\r\n\r\n{other_username} has written a reference for you. Before it goes to your public profile, you can review it and either accept or ignore it. {click_here} to view the reference. \r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {username},</td>\n</tr>\n<tr>\n<td>\n<p>{other_username} has written a reference for you. Before it goes to your public profile, you can review it and either accept or ignore it. {click_here} to view the reference.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(48, 'host_reservation_notification', 'Reservation notification for host', 'The Reservation was requested by  {traveler_name}', 'Hello {username},\n\n{traveler_name} booked the {list_title} place on {book_date} at {book_time}.\n\nDetails as follows,\n\nTraveler Name : {traveler_name}\nContact Email Id : {traveler_email_id}\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {market_price}\n\nPlease give the confirmation by clicking the below action.\n{action_url}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>\n<p>Hi {username} ,</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} booked the {list_title} place on {book_date} at {book_time}.</p>\n<br />\n<p>Details as follows,</p>\n<p>Traveler Name : {traveler_name}</p>\n<p>Contact Email Id : {traveler_email_id}</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n<p>Price : {market_price}</p>\n<br />\n<p>Please give the confirmation by clicking the below action.</p>\n<p>{action_url}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(120, 'news_letter_subscribe', 'News Letter Subscribe', 'New Subscriber is awaiting for your response...', 'Hi Admin,\n\nAs I want to be an member in our team {site_name}. So kindly consider this request as an obligation and do me favour. Thank you.\n\nThanks and Regards,\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>As I want to be an member in our team {site_name}. So kindly consider this request as an obligation and do me favour. Thank you.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(121, 'news_letter_accept', 'News Letter accept', 'Welcome to {site_name}! Your Next Steps ...', 'Hi User,\n\nThanks for subscribing to {site_name}! You''re amazing. You know what else is amazing? If you''re curious and have an hour to spare, tune into our site {site_name}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi User,</td>\n</tr>\n<tr>\n<td>\n<p>Thanks for subscribing to {site_name}! You''re amazing. You know what else is amazing? If you''re curious and have an hour to spare, tune into our site {site_name}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(49, 'traveller_reservation_notification', 'Reservation notification for  traveller', 'Your Reservation Request Is Succesfully Sent', 'Hello {traveler_name},\r\n\r\nYour reservation request is successfully sent to the appropriate host.\r\n\r\nPlease wait for his confirmation.\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveler_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Your reservation request is successfully sent to the appropriate host.</p>\r\n<p>Please wait for his confirmation.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 0 10px 0;">Admin,</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(50, 'admin_reservation_notification', 'Reservation notification for  administrator', '{traveler_name} sent the reservation request to {host_name}', 'Hello Admin,\n\n{traveler_name} sent the reservation request for {list_title} place on {book_date} at {book_time}.\n\nDetails as follows,\n\nTraveler Name : {traveler_name}\nContact Email Id : {traveler_email_id}\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {market_price}\nHost Name : {host_name}\nHost Email Id : {host_email_id} \n\n--\nThanks and Regards,\n\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} sent the reservation request for  {list_title} place on {book_date} at {book_time}.</p>\n<p>Details as follows,</p>\n<p>Traveler Name : {traveler_name}</p>\n<p>Contact Email Id : {traveler_email_id}</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n<p>Price : {market_price}</p>\n<p>Host Name : {host_name}</p>\n<p>Host Email Id : {host_email_id}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(51, 'traveler_reservation_granted', 'Traveler : After Reservation granted', 'Congrats! Your reservation request is granted.', 'Hi {traveler_name},\n\nCongratulation, Your reservation request is granted by {host_name} for {list_name}.\n\nBelow we mentioned his contact details,\n\nFirst Name : {Fname}\nLast Name : {Lname}\nLive In : {livein}\nPhone No : {phnum}\n\nExact Address is,\n\nStreet Address : {street_address}\nOptional Address : {optional_address}\nCity : {city}\nState : {state}\nCountry : {country}\nZip Code : {zipcode}\n\nHost Message : {comment} \n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Congratulation, Your reservation request is granted by {host_name} for {list_name}.</p>\n<p>Below we mentioned his contact details,</p>\n<p>First Name : {Fname}</p>\n<p>Last Name : {Lname}</p>\n<p>Live In : {livein}</p>\n<p>Phone No : {phnum}</p>\n<p>Exact Address is,</p>\n<p>Street Address : {street_address},</p>\n<p>Optional Address :{optional_address},</p>\n<p>City : {city},</p>\n<p>State : {state},</p>\n<p>Country : {country},</p>\n<p>Zip code : {zipcode}</p>\n<p>Host Message : {comment}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 0 10px 0;">Admin,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(52, 'traveler_reservation_declined', 'Traveler : After reservation declined', 'Sorry! Your reservation request is denied', 'Hi {traveler_name},\n\nSorry, Your reservation request is dined by {host_name} for {list_title}.\n\nHost Message : {comment} \n\nSoon, We will contact you with the appropriate payment.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveler_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Sorry, Your reservation request is dined by {host_name} for {list_title}.</p>\r\n<p>Host Message : {comment}</p>\r\n<p>Soon, We will contact you with the appropriate payment.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 0 10px 0;">Admin,</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(60, 'traveler_reservation_cancel', 'Traveler : After reservation canceled', '{traveler_name} cancelled your reservation list', 'Hi {host_name},\n\nSorry, Your ({status}) reservation list is cancelled by {traveler_name} for {list_title}.\n\n{user_type} Message : {comment} \n\nSure we will contact you soon, if there is any payment balance.\n\nAnd also, if you have any other queries, please feel free to contact us.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Sorry, Your ({status}) reservation list is canceled by {traveler_name} for {list_title}.</p>\n<p>{user_type} Message : {comment}</p>\n<p>Sure we will contact you soon, if there is any payment balance.</p>\n<p>And also, if you have any other queries, please feel free to contact us.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 0 10px 0;">Admin,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(53, 'traveler_reservation_expire', 'Traveler : Reservation Expire', 'Sorry! Your {type} request is expired', 'Hi {traveler_name},\n\nYour {type} request is expired.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nYour {type} request is expired.<br /><br />\nHost Name : {host_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(54, 'host_reservation_expire', 'Host : Reservation Expire', '{type} request expired for your list', 'Hi {host_name},\n\n{type} request expired for {list_title} booked by {traveler_name}.\n\nGuest Name : {traveler_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<br />\n{type} request expired for {list_title} booked by {traveler_name}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(55, 'admin_reservation_expire', 'Admin : Reservation Expire', '{type} request is expired', 'Hi Admin,\n\n{traveler_name} {type} request is expired for {list_title}.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} {type} request is expired for {list_title}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(56, 'host_reservation_granted', 'Host : After Reservation Granted', 'You have accepted the {traveler_name} reservation request', 'Hi {host_name},\n\nYou have accepted the {traveler_name} reservation request for {list_title}.\n\nBelow we mentioned his contact details,\n\nFirst Name : {Fname}\nLast Name : {Lname}\nLive In : {livein}\nPhone No : {phnum}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>You have accepted the {traveler_name} reservation request for {list_title}.</p>\n<p>Below we mentioned his contact details,</p>\n<p>First Name : {Fname}</p>\n<p>Last Name : {Lname}</p>\n<p>Live In : {livein}</p>\n<p>Phone No : {phnum}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 0 10px 0;">Admin,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(118, 'silas', 'ddfgjk', 'uuittt', 'gggllt', '<p>uju8j89uj8iukjiu</p>'),
(57, 'admin_reservation_granted', 'Admin : After Reservation granted', '{host_name} accepted the {traveler_name} reservation request', 'Hi Admin,\r\n\r\n{host_name} accepted the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{host_name} accepted the {traveler_name} reservation request for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0px;">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(58, 'host_reservation_declined', 'Host : After Reservation Declined', 'You have declined the {traveler_name} reservation request', 'Hi {host_name},\r\n\r\nYou have declined the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>You have declined the {traveler_name} reservation request} for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 0 10px 0;">Admin,</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(59, 'admin_reservation_declined', 'Admin : After Reservation Declined', '{host_name} declined the {traveler_name} reservation request', 'Hi Admin,\r\n\r\n{host_name} declined the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{host_name} declined the {traveler_name} reservation request for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0px;">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(61, 'admin_reservation_cancel', 'Admin : After reservation canceled', '{traveler_name} cancelled the {host_name} reservation list', 'Hi Admin,\n\n{traveler_name} cancelled the {host_name} reservation list ({status}) for {list_title}.\n\n{penalty}\n\n--\nThanks and Regards,\n\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} canceled the {host_name}&nbsp; reservation list ({status}) for {list_title}.\n<br/><br/>{penalty}\n</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(62, 'host_reservation_cancel', 'Host : After reservation canceled', 'You have cancelled the {host_name} reservation list', 'Hi {traveler_name},\n\nYou have cancelled the {host_name} reservation list ({status}) for {list_title}.\n\n{cancellation_limit}\n\n{penalty}\n\nIf you have any other queries, please feel free to contact us. \n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>You have canceled the {host_name}&nbsp; reservation list ({status}) for {list_title}.<br /><br />{cancellation_limit}<br /><br />{penalty}</p>\n<p>If you have any other queries, please feel free to contact us.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(63, 'forgot_password', 'Forgot Password', 'Forgot Password', 'Dear Member,\n\nBelow we have mentioned your account details.\n\nHere we go,\n\nEmail_id : {email}\n\nPassword : {password}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Dear Member,</td>\n</tr>\n<tr>\n<td>\n<p>Below we have mentioned your account details.</p>\n<p>Here we go,</p>\n<p>Email_id : {email}</p>\n<p>Password : {password}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(91, 'checkin_host', 'Host: Check In', 'Guest CheckIn', 'Hi {host_name},\n\n{traveler_name} is checkin to {list_title}.\n\nGuest Name : {guest_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} is checkin to&nbsp;&nbsp;{list_title} &nbsp;.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(64, 'users_signin', 'Users Signin', 'Welcome to  {site_name}', 'Dear Member,\r\n\r\nPleasure to meet you and welcome to the {site_name}.\r\n\r\nBelow we have mentioned your account details.\r\n\r\nHere we go,\r\n\r\nEmail_id : {email}\r\n\r\nPassword : {password}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Dear Member,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Pleasure to meet you and welcome to the {site_name}.</p>\r\n<p>Below we have mentioned your account details.</p>\r\n<p>Here we go,</p>\r\n<p>Email_id : {email}</p>\r\n<p>Password : {password}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(65, 'reset_password', 'Reset Password', 'Reset Password', 'Dear Member,\n\nBelow we have mentioned your new account details.\n\nHere we go,\n\nPassword : {password}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Dear Member,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Below we have mentioned your new account details.</p>\r\n<p>Here we go,</p>\r\n<p>Password : {password}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(66, 'admin_payment', 'Admin payment to Host', 'Admin payed your fees for {list_title}', 'Hello {username},\n\nWe have payed your fees for {list_title}.\n\nDetails as follows,\n\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {payed_price}\nPayment Through : {payment_type}\nPay Id: {pay_id}\nPayed Date : {payed_date}\n\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>\n<p>Hi {username} ,</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>We have payed your fees for {list_title}.</p>\n<br />\n<p>Details as follows,</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n<p>Price : {payed_price}</p>\n<p>Payment Through : {payment_type}</p>\n<p>Pay Id : {pay_id}</p>\n<p>Payed Date : {payed_date}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(67, 'contact_form', 'Contact Form', 'Message received from contact form', 'Hi Admin,\n\nA message received from contact us page on {date} at {time}.\n\nDetails as follows,\n\nName : {name}\n\nEmail : {email}\n\nMessage : {message}\n\n--\nThanks and Regards,\n\n{site_name} Team', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>A message received from contact us page on {date} at {time}.</p>\n<p>Details as follows,</p>\n<p>Name : {name}</p>\n<p>Email : {email}</p>\n<p>Message : {message}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(68, 'invite_friend', 'Invite My Friends', '{username} invite You.', 'Hi Friend''s,\n\n{username} wants you to invite {site_name}\n\n{dynamic_content}\n\n{click_here}\n\n--\nRegards,\n{username}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Friends,</td>\n</tr>\n<tr>\n<td>\n<p>{username} wants you to invite</p>\n<p>{site_name}</p>\n<p>{dynamic_content}</p>\n<p>&nbsp;{click_here}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Regards,</p>\n<p style="margin: 0px;">{username}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(69, 'email_verification', 'Email Verification Link', '{site_name} Email Verification Link', 'Hi {user_name},\n\nPlease Click the below link for your {site_name} email verification.\n\n{click_here}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {user_name},</td>\n</tr>\n<tr>\n<td>\n<p>Please Click the below link for your {site_name} email verification.</p>\n<p>&nbsp;{click_here}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(70, 'referral_credit', 'Referral Credit', 'You are earn {amount} from Referrals', 'Hi {username},\n\nYou are earn the {amount} by {friend_name}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {user_name},</td>\n</tr>\n<tr>\n<td><p>\nYou are earn the {amount} by {friend_name}</p>\n</td>\n</tr><tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(72, 'User_join_to_Referal_mail', 'User join to Referal mail', 'Your Friend Signup', 'Dear {refer_name},\n\nYour friend {friend_name} is now join in {site_name}.Now, $100 is credit in your Travel Credit Possible account.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Dear {refer_name},</td>\n</tr>\n<tr>\n<td><br />Your friend {friend_name} is now join in {site_name}.Now, $100 is credit in your Travel Credit Possible account.<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(73, 'contact_request_to_host', 'Contact Request to Host', 'Contact Request', '{mailtemplate}', '<p>{mailtemplate}</p>'),
(122, 'tutiu', 'jhkhg', 'uihughuy', 'jkjhihlkh', '<p>khhkjgk</p>'),
(123, 'computer', 'comp', 'comp', 'jkhgglht,l ycv l.', '<p>.gkchjnhghhij jh uy &nbsp; iou</p>'),
(124, '45755', 'iyuou', 'cfytgu', 'hi hello', '<p>reyjhyhkru</p>'),
(125, '896779', 'sdgr', 'fgj', 'fh', '<p>hfhtde</p>'),
(126, 'kalai@gmail.com', 'hi hello', 'fgjhgkjhlkuy', 'etyutowe8twpuyujdhsghiusyt8iwertu89w7t9wt7iwquuuuiuriweyreywtiuyrieyt843765558999999999999iuyyyyyyyyy465uiioidsnhsfgdjgfnkfjdyhuwyturtuiytiiirohcxvkjsdhgjeh', '<p>re7yr86t76e9w793kjsdhfdfyuttrew89r98jhxhy8sy689we6t47suyiuyteroiuuuuuuyruyhjxnzvvvvfghaaaaaajeytweyrteutttttttttttttttttytriuwytereyt</p>'),
(74, 'contact_request_to_guest', 'Contact Request to Guest', 'Contact Request', 'Hi {traveller_username},\n		\nYou have sent contact request to {host_username}.\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n		\nGuests : {guest}\n		\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td>\nYou have sent contact request to {host_username}.<br /><br />\n			\nList : {title}<br /><br />\n		\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n		\nGuests : {guest}<br /><br />\n		\nYour Message  : {message}<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(75, 'request_granted_to_guest', 'Contact Request Granted to Guest', 'Contact Request Granted', 'Hi {traveller_username},\n\nYour contact request is granted by {host_username}.\n		\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n			\nHost Message  : {message}\n\nURL for Booking  : {link}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td><br /><br />\nYour contact request is granted by {host_username}.\n<br /><br />\n\nHost Email : {host_email}<br /><br /> \n\nList : {title}<br /><br /> \n\nCheckin Date : {checkin}<br /><br /> \n\nCheckout Date : {checkout}<br /><br /> \n\nPrice : {price}<br /><br />\n\nHost Message : {message}<br /><br /> \n\nURL for Booking : {link}<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(76, 'request_granted_to_host', 'Contact Request Granted to Host', 'Contact Request Granted', 'Hi {host_username},\n\nYou have accept the contact request for {traveller_username}.\n		\nGuest Email : {guest_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_username},</td>\n</tr>\n<tr>\n<td><br /><br />\nYou have accept the contact request for {traveller_username}. <br /><br />\n\nGuest Email : {guest_email}<br /><br />	\n		\nList : {title}<br /><br />\n		\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n	\nYour Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(77, 'contact_request_to_admin', 'Contact Request to Admin', 'Contact Request', 'Hi Admin,\n		\n{traveller_username} sent contact request to {host_username}.\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n		\nGuests : {guest}\n\nPrice : {price}\n		\nGuest Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n{traveller_username} sent contact request to {host_username}. <br /><br />		\nList : {title}<br /><br />	\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n	\nPrice : {price}<br /><br />\n		\nGuest Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(78, 'request_granted_to_admin', 'Contact Request Granted to Admin', 'Contact Request Granted', 'Hi Admin,\n\n{host_username} accept the contact request for {traveller_username}.\n		\nGuest Email : {guest_email}\n\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nHost Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n{host_username} accept the contact request for {traveller_username}.<br /><br />\n\nGuest Email : {guest_email}<br /><br />	\n\nHost Email : {host_email}<br /><br />	\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />	\n			\nHost Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(79, 'special_request_granted_to_guest', 'Contact Request Granted with Special Offer to Guest', 'Contact Request Granted with Special Offer', 'Hi {traveller_username},\n\n{host_username} accept your contact request with special offer.\n		\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nMessage  : {message}\n\nURL for Booking  : {link}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td><br />\n\n{host_username} accept your contact request with special offer.<br /><br />\n\nHost Email : {host_email}<br /><br />	\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nMessage  : {message}<br /><br />\n\nURL for Booking  : {link}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(80, 'special_request_granted_to_host', 'Contact Request Granted with Special Offer to Host', 'Contact Request Granted with Special Offer', 'Hi {host_username},\n\nYou have accept the {traveller_username} contact request with special offer.\n		\nGuest Email : {guest_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n			\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_username},</td>\n</tr>\n<tr>\n<td><br />\n\nYou have accept the {traveller_username} contact request with special offer.<br /><br />\n\nGuest Email : {guest_email}<br /><br />\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nYour Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(81, 'special_request_granted_to_admin', 'Contact Request Granted with Special Offer to Admin', 'Contact Request Granted with Special Offer', 'Hi Admin,\n\n{host_username} have accept the {traveller_name} contact request with special offer.\n		\nGuest Email : {guest_email}\n\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n			\nHost Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n\n{host_username} have accept the {traveller_username} contact request with special offer.<br /><br />\n\nGuest Email : {guest_email}<br /><br />\n\nHost Email : {host_email}<br /><br />\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nHost Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 10px 0 0;">Admin</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(82, 'request_cancel_to_guest', 'Contact Request Cancelled to Guest', 'Sorry! your contact request is cancelled', 'Hi {traveller_username},\n\nSorry, Your contact request is denied by {host_username} for {title}.\n\nHost Message : {message}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveller_username} ,</td>\n</tr>\n<tr>\n<td>\n<p>Sorry, Your contact request is denied by {host_username} for {title}.</p><br /><br />\nHost Message : {message}<br /><br />\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 0 10px 0;">Admin,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(83, 'request_cancel_to_host', 'Contact Request Cancelled to Host', 'You have cancelled the contact request', 'Hi {host_username},\n\nYou have cancelled the {traveller_username} contact request for {title}.\n\nYour message : {message}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_username} ,</td>\n</tr>\n<tr>\n<td>\n<p>You have cancelled the {traveller_username} contact request for {title}.</p><br /><br />\nYour message : {message}<br /><br />\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0 0 10px 0;">Admin,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(85, 'checkout_admin', 'Admin: Check Out', 'Traveller Checkout', 'Hi Admin,\n\n{traveler_name} is checkouted from {list_title}.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} is checkouted form {list_title}.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div> </div>\n</td>\n</tr>\n</tbody>\n</table>'),
(84, 'request_cancel_to_admin', 'Contact Request Cancelled to Admin', '{host_username} cancelled the {traveller_username} contact request', 'Hi Admin,\n\n{host_username} cancelled the {traveller_username} contact request for {title}.\n\nHost message : {message}\n\n--\nThanks and Regards,\n\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{host_username} cancelled the {traveller_username} contact request for {title}.</p>\n<br /><br />\nHost message : {message}.\n</td>\n</tr>\n<tr>\n<td>\n<p style="margin: 0 10px 0 0;">--</p>\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\n<p style="margin: 0px;">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(86, 'checkout_host', 'Host: Check Out', 'Traveller Checkout', 'Hi {host_name},\n\n{traveler_name} is checkouted from {list_title} .\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} is checkouted from&nbsp;&nbsp;{list_title} &nbsp;.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(87, 'checkout_traveler', 'Traveler: Check Out', 'Traveller Checkout', 'Hi {traveler_name},\n\nThank you,You are checkouted from {list_title}.\n\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Thank you,You are sucessfully checkouted from {list_title}.</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(88, 'contact_discuss_more_to_guest', 'Contact Request - Discuss more to Guest', 'Contact Request - Discuss more', 'Hi {traveller_username},\r\n\r\n{host_username} wants to discuss more with you.\r\n\r\nHost Email : {host_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nMessage  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveller_username},</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\n{host_username} wants to discuss more with you.<br /><br />\r\n\r\nHost Email : {host_email}<br /><br />	\r\n\r\nList : {title}<br /><br />	\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nMessage  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(89, 'contact_discuss_more_to_host', 'Contact Request - Discuss more to Host', 'Contact Request - Discuss more', 'Hi {host_username},\r\n\r\nYou wants to discuss more with {traveller_username}.\r\n\r\nGuest Email : {guest_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nYour Message  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_username},</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\nYou wants to discuss more with {traveller_username}.<br /><br />\r\n\r\nGuest Email : {guest_email}<br /><br />	\r\n\r\nList : {title}<br /><br />	\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nYour Message  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(90, 'contact_discuss_more_to_admin', 'Contact Request - Discuss more to Admin', 'Contact Request - Discuss more', 'Hi Admin,\r\n\r\n{host_username} wants to discuss more with {traveller_username}.\r\n\r\nGuest Email : {guest_email}\r\n\r\nHost Email : {host_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nHost Message  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\n{host_username} wants to discuss more with {traveller_username}.<br /><br />\r\n\r\nGuest Email : {guest_email}<br /><br />\r\n\r\nHost Email : {host_email}<br /><br />\r\n\r\nList : {title}<br /><br />\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nHost Message  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style="margin: 0 10px 0 0;">--</p>\r\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\r\n<p style="margin: 0 10px 0 0;">Admin</p>\r\n<p style="margin: 0px;">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(92, 'checkin_admin', 'Admin: CheckIn', 'Guest CheckIn', 'Hi Admin,\n\n{traveler_name} is checkin to {list_title}.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} is checkin to {list_title}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(93, 'checkin_traveller', 'Traveler: Check In', 'Guest CheckIn', 'Hi {traveler_name},\n\nThank you,You are checkin to {list_title}.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nThank you,You are sucessfully checkin to {list_title}.<br /><br />\nHost Name : {host_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>');
INSERT INTO `email_templates` (`id`, `type`, `title`, `mail_subject`, `email_body_text`, `email_body_html`) VALUES
(94, 'refund_admin', 'Admin: Refund', 'Refund from Admin', 'Hi Admin,\n\nYou have refunded the {refund_amt} amount to {name} {account} account.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\nYou have refunded the {refund_amt} amount to {name} {account} account.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.<br /><br />\nRefunded Amount : {refund_amt}\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(95, 'refund_host', 'Host: Refund', 'Refund from Admin', 'Hi {host_name},\r\n\r\nAdmin refunded the {refund_amt} amount to your {account} account.\r\n\r\nGuest Name : {traveler_name}\r\nList Name : {list_title}\r\nPrice : {currency}{price}\r\nCheckin Date : {checkin}\r\nCheckout Date : {checkout}\r\nRefunded Amount : {refund_amt}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}\r\n', '<table cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nAdmin refunded the {refund_amt} amount to your {account} account..<br /><br />\r\nGuest Name : {traveler_name}.<br /><br />\r\nList Name : {list_title}.<br /><br />\r\nPrice : {currency}{price}.<br /><br />\r\nCheckin Date : {checkin}.<br /><br />\r\nCheckout Date : {checkout}.<br /><br />\r\nRefunded Amount : {refund_amt}\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(96, 'refund_guest', 'Traveler: Refund', 'Refund from Admin', 'Hi {traveler_name},\n\nAdmin refunded the {refund_amt} amount to your {account} account.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {traveler_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nAdmin refunded the {refund_amt} amount to your {account} account.<br /><br />\nHost Name : {host_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.<br /><br />\nRefunded Amount : {refund_amt}\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(97, 'list_create_host', 'List creation to Host', 'You have created the new list', 'Hi {host_name},\r\n\r\nYou have created the new list.\r\n\r\nList name : {list_title}\r\n\r\nLink : {link}\r\n\r\nPrice : {price}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nYou have created the new list.<br /><br />\r\nList Name : {list_title}.<br /><br />\r\nLink : {link}.<br /><br />\r\nPrice : {price}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(98, 'list_create_admin', 'List creation to Admin', '{host_name} have created the new list', 'Hi Admin,\r\n\r\n{host_name} have created the new list.\r\n\r\nHost name : {host_name}\r\n\r\nList name : {list_title}\r\n\r\nLink : {link}\r\n\r\nPrice : {price}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\n{host_name} have created the new list.<br /><br />\r\nHost name : {host_name}.<br /><br />\r\nList name : {list_title}.<br /><br />\r\nLink : {link}.<br /><br />\r\nPrice : {price}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(99, 'list_delete_host', 'List deletion to Host', 'You have deleted the list', 'Hi {host_name},\r\n\r\nYou have deleted the list.\r\n\r\nList name : {list_title}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nYou have deleted the list.<br /><br />\r\nList Name : {list_title}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(100, 'list_delete_admin', 'List deletion to Admin', '{host_name} have deleted the list', 'Hi Admin,\r\n\r\n{host_name} have deleted the list.\r\n\r\nHost name : {host_name}\r\n\r\nList name : {list_title}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\n{host_name} have deleted the list.<br /><br />\nHost name : {host_name}.<br /><br />\nList name : {list_title}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(102, 'payment_issue_to_admin', 'Payment issue mail to Admin', 'Payment misconfigured', 'Hi Admin,\n\n{payment_type} API credentials are misconfigured.\n\n{username} tried to make the payment.\n\nEmail ID : {email_id}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{payment_type} API credentials are misconfigured.</p>\n<p>{username} tried to make the payment.</p>\n<p>Email ID : {email_id}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(104, 'refund_host_commission', 'Host: Accept Commission Refund', 'Refunding the Host Accept Commission from Admin', 'Hi {host_name},\n\nAdmin refunded the {refund_amt} amount to your {account} account.\n\nList Name : {list_title}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<p>Admin refunded the {refund_amt} amount to your {account} account.</p>\n<p>List Name : {list_title}</p>\n<p>Refunded Amount : {refund_amt}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(105, 'refund_host_commission_admin', 'Admin: Accept Commission Refund', 'You have Refunding the Host Accept Commission', 'Hi Admin,\n\nYou have refunded the {refund_amt} amount to your {account} account.\n\nList Name : {list_title}\nHost Name : {host_name}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>You have refunded the {refund_amt} amount to your {account} account.</p>\n<p>List Name : {list_title}</p>\n<p>Host Name : {host_name}</p>\n<p>Refunded Amount : {refund_amt}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),
(111, 'passport_verification', 'Passport verification for Â administrator', '{user_name} sent the passport verification  request ,userid-{user_id}', 'Hello Admin,\\n\\n{user_name}sent the passport verification request,user id {user_id}\\n\\nDetails as follows,\\n\\nUser Name : {user_name}\\nUser Id : {user_id}\\n\\n\\n\\n--\\nThanks and Regards,\\n\\n{user_name}', '<table style="width: 100%;" cellspacing="10" cellpadding="0">\\n<tbody>\\n<tr>\\n<td>Hi Admin,</td>\\n</tr>\\n<tr>\\n<td>\\n<p>{user_name} sent the passport verification request ,user id {user_id}.</p>\\n<p>Details as follows,</p>\\n<p>User Name : {user_name}</p>\\n<p>User Id : {user_id}</p>\\n\\n</td>\\n</tr>\\n<tr>\\n<td>\\n<p style="margin: 0 10px 0 0;">--</p>\\n<p style="margin: 0 0 10px 0;">Thanks and Regards,</p>\\n<p style="margin: 0px;">{user_name} </p>\\n</td>\\n</tr>\\n</tbody>\\n</table>'),
(112, 'change password to user', 'admin change to the password', 'Welcome to  {site_name}', 'admin change the passwordOld password:{new_password}Conform password:{conform_password}Dear Member,Old password:{new_password}Conform password:{conform_password}--Thanks and Regards,Admin{site_name} ', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Dear Member,</td>\n</tr>\n<tr>\n<td>\n<p>&nbsp;You have successfully changed your password</p>\n<p>Please use the below password details for login.</p>\n<p>Old password:{new_password}</p>\n<p><span>New password:{conform_password}</span></p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(113, 'spam', 'Spam List', 'Admin Message - Listing reported as Spam!', '****ADMIN MESSAGE****\n\n\n\nThe below listing has been reported as Spam:\n\nURL for Spam Listing : {list_url}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {guest_name},</td>\n</tr>\n<tr>\n<td><br/ > {host_name} has added a review about you in {list_name} on {site_name} <br />And he is waiting for your review.\n<br/>\nHost name : {host_name}<br/>\nList name : {list_name}\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(114, 'host_notify_review', 'Host Notification for Review', '{guest_name} has a review from {host_name}', 'Hi {guest_name},\n\n{host_name} has added a review about you in {list_name} on {site_name}\n\nAnd he is waiting for your review.\nHost name : {host_name}\nList name : {list_name}\n\n\n--\nThanks and Regards,\nAdmin\n{site_name}\n', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {guest_name},</td>\n</tr>\n<tr>\n<td><br/ > {host_name} has added a review about you in {list_name} on {site_name} <br />And he is waiting for your review.\n<br/>\nHost name : {host_name}<br/>\nList name : {list_name}\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div> </div>\n</td>\n</tr>\n</tbody>\n</table>'),
(115, 'guest_notify_review', 'Guest Notification for Review', '{guest_name} has checked out.', 'Hi {host_name},\n\n{guest_name} has checkouted from your list {list_name} on {site_name}\n\nAnd he is waiting for your review.\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<br />\n{guest_name} has checkouted from your list {list_name} on {site_name}\n\n<br />And he is waiting for your review.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),
(116, 'host_notification', 'Upcoming notification for host', 'The {traveler_name} is having a reservation on your {list_title} on tomorrow', 'Hello {host_name},\n\n{traveler_name} booked the {list_title} place on tomorrow.\n\nDetails as follows,\n\nTraveler Name : {traveler_name}\nContact Email Id : {traveler_email_id}\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\n\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hello {host_name},</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} booked the {list_title} place on tomorrow.</p>\n<p>Details as follows,</p>\n\n<p>Traveler Name : {traveler_name}</p>\n<p>Contact Email Id : {traveler_email_id}</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n\n\n</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>\n'),
(117, 'list_notification', 'Notification for calendar update', 'The list {list_name} needs an update', 'Hello {host_name},\r\n\r\nThe {list_name} you listed in {site_name} don''t have any updates in last month.\r\n\r\nTo improve your ranking in the search results please update your list \r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hello {host_name},</td>\n</tr>\n<tr>\n<td>\n<p>\nThe {list_name} you listed in {site_name} don''t have any updates in last month.</p>\n<p>\nTo improve your ranking in the search results please update your list \n</p>\n\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>\n'),
(127, 'notify_me_to_user', 'List Notificication', '{host_name} created a new list from {site_name}', 'Hi {user_name},\n\n{host_name} created a new list from our {site_name}. Please visit this link to view more details about this list.\n\n{click_here}\n\n--\nThanks and Regards,\nAdmin\n{site_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>\n<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi {user_name},</td>\n</tr>\n<tr>\n<td>\n<p>{host_name} created a new list from our&nbsp;{site_name}. Please visit this link to view more details about this list.</p>\n<p>{click_here}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>'),
(128, 'notify_me_to_admin', 'Notify Me', 'User Notify', 'Hi Admin,\n\nPlease send newly list updates\n\n--\nThanks and Regards,\n{user_name}', '<table cellspacing="10" cellpadding="0">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>Please send newly list updates</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{user_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `joinus`
--

CREATE TABLE IF NOT EXISTS `joinus` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joinus`
--

INSERT INTO `joinus` (`id`, `name`, `url`) VALUES
(1, 'Twitter', 'http://twitter.com/'),
(2, 'Facebook', 'https://www.facebook.com/'),
(3, 'Google', 'https://plus.google.com/'),
(4, 'Youtube', 'http://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(12) unsigned NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `setting_type` char(1) CHARACTER SET utf8 NOT NULL,
  `value_type` char(1) CHARACTER SET utf8 NOT NULL,
  `int_value` int(12) DEFAULT NULL,
  `string_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_value` text CHARACTER SET utf8,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `code`, `name`, `setting_type`, `value_type`, `int_value`, `string_value`, `text_value`, `created`) VALUES
(1, 'SITE_TITLE', 'Site Title', 'S', 'S', 0, 'futuredesigners.com', NULL, 1435606327),
(2, 'SITE_SLOGAN', 'Site Slogan', 'S', 'S', 0, 'Rent nightly from real people in 15,543 cities in 185 countries.', NULL, 2013),
(3, 'SITE_STATUS', 'Site status', 'S', 'I', 0, '', NULL, 2013),
(4, 'OFFLINE_MESSAGE', 'Offline Message', 'S', 'T', 0, '', 'Updation is going on...we will run this system very soon', 2013),
(5, 'SITE_ADMIN_MAIL', 'Site Admin Mail', 'S', 'S', NULL, 'adevelopers2@gmail.com', NULL, 1435606327),
(6, 'SITE_FB_API_ID', 'Site Facebook API ID', 'S', 'S', NULL, '1578449195808405', NULL, 1435606327),
(7, 'SITE_FB_API_SECRET', 'Site Facebook Secret Key', 'S', 'S', NULL, 'eda03ba8704dab2f4471260c272da4e8', NULL, 1435606327),
(8, 'SITE_GOOGLE_API_ID', 'Site Google API Key', 'S', 'S', NULL, '920577418495-r4de6saadvbc1ihl3b31oigjlsfr77b5.apps.googleusercontent.com', NULL, 1435606327),
(9, 'FRONTEND_LANGUAGE', 'Frontend Language', 'S', 'S', 1, 'en', 'en', 2013),
(10, 'SITE_LOGO', 'Site Logo', 'S', 'S', NULL, 'logo11.png', NULL, 2013),
(11, 'META_KEYWORD', 'Meta Keyword', 'S', 'S', NULL, 'gjlgjj', NULL, 2013),
(12, 'META_DESCRIPTION', 'Meta Description', 'S', 'S', NULL, 'fghjhjf', NULL, 2013),
(13, 'HOW_IT_WORKS', 'How It Works', 'S', 'S', 0, 'video.mp4', '', 2013),
(14, 'GOOGLE_ANALYTICS_CODE', 'Google Analytics Code', 'S', 'S', NULL, NULL, '', 2013),
(15, 'BACKEND_LANGUAGE', 'Backend Language', 'S', 'S', 2, 'en', 'en', 0),
(16, 'SITE_TWITTER_API_ID', 'Site Twitter API ID', 'S', 'S', NULL, '464jljk5687jnm', NULL, 1435606327),
(17, 'SITE_TWITTER_API_SECRET', 'Site Twitter Secret Key', 'S', 'S', NULL, '4687966kjkl', NULL, 1435606327),
(48, 'DI_LICENSE_LOCAL_KEY', 'License Local Key', 'S', 'T', NULL, NULL, 'YToxMTp7czo4OiJjdXN0b21lciI7YTo4OntzOjI6ImlkIjtzOjM6IjQ1NSI7czox%0ANToicHJpbWFyeV91c2VyX2lkIjtzOjM6IjM3MyI7czo0OiJuYW1lIjtzOjE0OiJD%0Ab2d6aWRlbCBTYWxlcyI7czoxMDoidmF0X251bWJlciI7czowOiIiO3M6OToiaG93%0AX2ZvdW5kIjtzOjA6IiI7czo1OiJhbGlhcyI7czowOiIiO3M6Njoic3RhdHVzIjtz%0AOjc6ImVuYWJsZWQiO3M6NzoiY3JlYXRlZCI7czoxMDoiMTM2NTQ2MzEyMyI7fXM6%0ANDoidXNlciI7YToxOntpOjA7YToxNDp7czoyOiJpZCI7czozOiIzNzMiO3M6MTA6%0AInNlc3Npb25faWQiO3M6MzI6IjZkOTE1YjY2YTE5MWUzYTQzYzQwZTZiZDIwZDEw%0ANzIzIjtzOjExOiJsYXN0X2xvZ2dlZCI7czoxMDoiMTQxNzY1MDkzOSI7czoxMDoi%0AZmlyc3RfbmFtZSI7czo1OiJTaGl2YSI7czo5OiJsYXN0X25hbWUiO3M6NjoiU2Fu%0Aa2FyIjtzOjg6InBhc3N3b3JkIjtzOjMyOiI0NzVhODc0ZGIxNzgwMWUyMzI1MTIw%0AYzNiNzkwYTNlYiI7czo4OiJ1c2VybmFtZSI7czoxMjoic2hpdmFzaGFua2FyIjtz%0AOjU6ImVtYWlsIjtzOjI1OiJzaGl2YXNoYW5rYXJAY29nemlkZWwuY29tIjtzOjE3%0AOiJzZWN1cml0eV9xdWVzdGlvbiI7czowOiIiO3M6MjQ6InNlY3VyaXR5X3F1ZXN0%0AaW9uX2Fuc3dlciI7czowOiIiO3M6ODoibWF4X3Jvd3MiO3M6MToiNSI7czoyNToi%0AaGVscGRlc2tfZmxvb2RfcHJvdGVjdGlvbiI7czo4OiJEaXNhYmxlZCI7czo3OiJj%0AcmVhdGVkIjtzOjEwOiIxMzQzNDE5ODY3IjtzOjY6InN0YXR1cyI7czo3OiJlbmFi%0AbGVkIjt9fXM6MTg6ImxpY2Vuc2Vfa2V5X3N0cmluZyI7czoyMDoiRHJvcElubi1i%0ANDlkMTI5NDJmYzAiO3M6ODoiaW5zdGFuY2UiO2E6NTp7czo5OiJkaXJlY3Rvcnki%0AO2E6MTp7aToxMzI0MztzOjQ4OiIvaG9tZS9jb2d6aWRlbC9wdWJsaWNfaHRtbC9k%0AZW1vL2Ryb3Bpbm5fc3RhbmRhcmQiO31zOjY6ImRvbWFpbiI7YToyOntpOjEzMjQw%0AO3M6MTc6ImRlbW8uY29nemlkZWwuY29tIjtpOjEzMjQxO3M6MjE6Ind3dy5kZW1v%0ALmNvZ3ppZGVsLmNvbSI7fXM6MjoiaXAiO2E6MTp7aToxMzI0MjtzOjEzOiIyMDgu%0AMTA5Ljg3LjQyIjt9czoxNToic2VydmVyX2hvc3RuYW1lIjthOjE6e2k6MTMyNDQ7%0AczozNjoiaXAtMjA4LTEwOS04Ny00Mi5pcC5zZWN1cmVzZXJ2ZXIubmV0Ijt9czo5%0AOiJzZXJ2ZXJfaXAiO2E6MTp7aToxMzI0NTtzOjk6IjEyNy4wLjAuMSI7fX1zOjc6%0AImVuZm9yY2UiO2E6NTp7aTowO3M6NjoiZG9tYWluIjtpOjE7czoyOiJpcCI7aToy%0AO3M6OToiZGlyZWN0b3J5IjtpOjM7czoxNToic2VydmVyX2hvc3RuYW1lIjtpOjQ7%0Aczo5OiJzZXJ2ZXJfaXAiO31zOjEzOiJjdXN0b21fZmllbGRzIjthOjE6e3M6MDoi%0AIjtOO31zOjIzOiJkb3dubG9hZF9hY2Nlc3NfZXhwaXJlcyI7czoxMDoiMTQ3ODQ3%0AMzQ2MCI7czoyMjoic3VwcG9ydF9hY2Nlc3NfZXhwaXJlcyI7czoxMDoiMTM5OTQx%0AMzg2MCI7czoxNToibGljZW5zZV9leHBpcmVzIjtzOjU6Im5ldmVyIjtzOjE3OiJs%0Ab2NhbF9rZXlfZXhwaXJlcyI7czoxMDoiMTQ0MDYxMzc5OSI7czo2OiJzdGF0dXMi%0AO3M6NjoiYWN0aXZlIjt9e3NwYmFzfTc0N2UwM2I1MDhlZjg1Y2JjNTI1NzNkMjE3%0AMjMzYWE2e3NwYmFzfWIxNzRkMWM4MDk0YmE3NTgyNTljYjk3NjlmM2JkYzYy', 1439405959),
(30, 'BANNER_VIDEO', 'Home page banner video', 'S', 'S', 0, 'http://www.youtube.com/watch?v=ab0TSkLe-E0', NULL, 0),
(20, 'NEXMO_API_SECRET', 'Nexmo API Secret', 'S', 'T', 0, '54d7efa484f6a545', NULL, 0),
(21, 'NEXMO_API_KEY', 'Nexmo API Key', 'S', 'T', 0, 'a23ad976', NULL, 0),
(22, 'NEXMO_API_PHONE_NO', 'Nexmo API Registered Phone number', 'S', 'S', 0, '9178069583', NULL, 0),
(23, 'FAVICON_IMAGE', 'favicon image', 'S', 'S', NULL, '1.png', NULL, 2014),
(47, 'DI_LICENSE_KEY', 'License Key', 'S', 'S', NULL, 'DropInn-b49d12942fc0', NULL, 1439405959),
(49, 'SITE_INVITE_LOGO', 'invite_logo', 's', 's', NULL, 'client-meeting.jpg', NULL, 0),
(50, 'SITE_LINK_API_ID', 'Site Linkedin API ID', 'S', 'S', NULL, 'kkjhfi9ooi457486', NULL, 0),
(51, 'SITE_LINK_API_SECRET', 'Site Linkedin Secret Key', 'S', 'S', NULL, '12556jkgjfgu24636', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fname`, `lname`, `created`) VALUES
(1, '', 'hai', 'jaha', NULL, NULL, NULL),
(2, '', 'next', 'raja', NULL, NULL, NULL),
(3, '', 'next', 'raja@gmail.com', NULL, NULL, NULL),
(4, '', 'next', 'raja@gmail.co', NULL, NULL, NULL),
(5, 'raja1@gmail.com', '$1$uz1.fa/.$rEmGFoh/Q5HTtw0MbaOve0', 'raja1@gmail.com', NULL, NULL, '1477324249'),
(6, 'raja12@gmail.com', '$1$oC1.Rj..$/t3VEpweeQLWcKJqUjKDs1', 'raja12@gmail.com', NULL, NULL, '1477324497'),
(7, 'raja16@gmail.com', '$1$Pm5.sU5.$6vRbxvmJns5r7UfZj0Hhd/', 'raja16@gmail.com', NULL, NULL, '1477324605'),
(8, 'raja44@gmail.com', '$1$22..hP3.$iE4GC9tvERbebNxpyac.z.', 'raja44@gmail.com', NULL, NULL, '1477324692'),
(9, 'raja444@gmail.com', '$1$ln4.K1..$52.zKpmZQ4ADqybxDGVi60', 'raja444@gmail.com', NULL, NULL, '1477324933'),
(10, 'raja4kk@gmail.com', '$1$4W/.5J5.$zuhHp./2aGFcFYUYmRjuf1', 'raja4kk@gmail.com', NULL, NULL, '1477325136'),
(14, 'rajaii@gmail.com', '$1$I43.xE..$V/9p6uFs.piyu5yqj27450', 'rajaii@gmail.com', NULL, NULL, '1477325266'),
(12, 'raja99@gmail.com', '$1$KF4.Ln/.$jyEb621sTVj4mzy2UT1wz1', 'raja99@gmail.com', NULL, NULL, '1477325157'),
(16, 'jaha7', '$1$og5.Rp5.$0wDR6i3zei7h.mEVFMVYG.', 'jaha7', NULL, NULL, '1481212507'),
(17, '', 'hai', 'jaha7', NULL, NULL, NULL),
(18, 'jaha8', '$1$sL/.Ff/.$Wx86ypmVWSzg55ZSLxhY/.', 'jaha8', NULL, NULL, '1481212518'),
(19, '', 'hai', 'jaha8', NULL, NULL, NULL),
(20, 'jaha11', '$1$a82.bH0.$TytM18gA582G5iU65fFfa1', 'jaha11', NULL, NULL, '1481212625'),
(21, '', 'hai', 'jaha11', NULL, NULL, NULL),
(22, 'jaha1qq', '$1$/d5.aj..$M3K/tjta8lKbl0ikgsSX6/', 'jaha1qq', NULL, NULL, '1481213314'),
(23, '', 'hai', 'jaha1qq', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
`id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `country`, `website`) VALUES
(1, 0, NULL, NULL),
(2, 0, NULL, NULL),
(3, 0, NULL, NULL),
(4, 0, NULL, NULL),
(5, 0, NULL, NULL),
(6, 0, NULL, NULL),
(7, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_temp`
--

CREATE TABLE IF NOT EXISTS `user_temp` (
`id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(34) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `activation_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinus`
--
ALTER TABLE `joinus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_temp`
--
ALTER TABLE `user_temp`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `joinus`
--
ALTER TABLE `joinus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(12) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_temp`
--
ALTER TABLE `user_temp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
