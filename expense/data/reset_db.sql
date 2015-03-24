#
# Encoding: Unicode (UTF-8)
#


DROP TABLE IF EXISTS `account_items`;
DROP TABLE IF EXISTS `account_providers`;
DROP TABLE IF EXISTS `alerts`;
DROP TABLE IF EXISTS `analytic_companies`;
DROP TABLE IF EXISTS `analytic_domains`;
DROP TABLE IF EXISTS `analytic_expense_categories`;
DROP TABLE IF EXISTS `analytic_expense_clients`;
DROP TABLE IF EXISTS `analytic_expense_departments`;
DROP TABLE IF EXISTS `analytic_expense_merchants`;
DROP TABLE IF EXISTS `analytic_expense_overtimes`;
DROP TABLE IF EXISTS `analytic_expense_projects`;
DROP TABLE IF EXISTS `analytic_expense_tags`;
DROP TABLE IF EXISTS `analytic_expense_taxes`;
DROP TABLE IF EXISTS `analytic_logins`;
DROP TABLE IF EXISTS `analytics`;
DROP TABLE IF EXISTS `auth_features`;
DROP TABLE IF EXISTS `billing_statements`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `category_tmps`;
DROP TABLE IF EXISTS `common_identifiers`;
DROP TABLE IF EXISTS `companies`;
DROP TABLE IF EXISTS `company_industries`;
DROP TABLE IF EXISTS `company_invitation_tracks`;
DROP TABLE IF EXISTS `company_invitations`;
DROP TABLE IF EXISTS `configurations`;
DROP TABLE IF EXISTS `constants`;
DROP TABLE IF EXISTS `countries`;
DROP TABLE IF EXISTS `currencies`;
DROP TABLE IF EXISTS `custom_classes`;
DROP TABLE IF EXISTS `custom_customers_jobs`;
DROP TABLE IF EXISTS `custom_users`;
DROP TABLE IF EXISTS `departments`;
DROP TABLE IF EXISTS `domains`;
DROP TABLE IF EXISTS `email_approvals`;
DROP TABLE IF EXISTS `email_campaigns`;
DROP TABLE IF EXISTS `email_templates`;
DROP TABLE IF EXISTS `exchange_rates`;
DROP TABLE IF EXISTS `expense_attachments`;
DROP TABLE IF EXISTS `expense_payment_matches`;
DROP TABLE IF EXISTS `expense_rules`;
DROP TABLE IF EXISTS `expense_tags`;
DROP TABLE IF EXISTS `expense_taxes`;
DROP TABLE IF EXISTS `expense_tmps`;
DROP TABLE IF EXISTS `expenses`;
DROP TABLE IF EXISTS `export_logs`;
DROP TABLE IF EXISTS `freshbooks_categories`;
DROP TABLE IF EXISTS `freshbooks_clients`;
DROP TABLE IF EXISTS `freshbooks_expenses`;
DROP TABLE IF EXISTS `freshbooks_projects`;
DROP TABLE IF EXISTS `freshbooks_users`;
DROP TABLE IF EXISTS `google_contact_temps`;
DROP TABLE IF EXISTS `googleapp_companies`;
DROP TABLE IF EXISTS `groups`;
DROP TABLE IF EXISTS `hourly_rates`;
DROP TABLE IF EXISTS `ids_account_items`;
DROP TABLE IF EXISTS `ids_account_providers`;
DROP TABLE IF EXISTS `ids_errors`;
DROP TABLE IF EXISTS `ids_user_account_providers`;
DROP TABLE IF EXISTS `industry_lists`;
DROP TABLE IF EXISTS `info_boxes`;
DROP TABLE IF EXISTS `intacct_categories`;
DROP TABLE IF EXISTS `intacct_classes`;
DROP TABLE IF EXISTS `intacct_companies`;
DROP TABLE IF EXISTS `intacct_creditcards`;
DROP TABLE IF EXISTS `intacct_currencies`;
DROP TABLE IF EXISTS `intacct_customers`;
DROP TABLE IF EXISTS `intacct_departments`;
DROP TABLE IF EXISTS `intacct_employees`;
DROP TABLE IF EXISTS `intacct_items`;
DROP TABLE IF EXISTS `intacct_locations`;
DROP TABLE IF EXISTS `intacct_mappings`;
DROP TABLE IF EXISTS `intacct_projects`;
DROP TABLE IF EXISTS `intacct_users`;
DROP TABLE IF EXISTS `intacct_vendors`;
DROP TABLE IF EXISTS `integrations`;
DROP TABLE IF EXISTS `integrations_users`;
DROP TABLE IF EXISTS `ios_device_tokens`;
DROP TABLE IF EXISTS `iphone_mappings`;
DROP TABLE IF EXISTS `locations`;
DROP TABLE IF EXISTS `mobile_clients`;
DROP TABLE IF EXISTS `mobile_projects`;
DROP TABLE IF EXISTS `netsuite_categories`;
DROP TABLE IF EXISTS `netsuite_classes`;
DROP TABLE IF EXISTS `netsuite_companies`;
DROP TABLE IF EXISTS `netsuite_currencies`;
DROP TABLE IF EXISTS `netsuite_customers`;
DROP TABLE IF EXISTS `netsuite_departments`;
DROP TABLE IF EXISTS `netsuite_employees`;
DROP TABLE IF EXISTS `netsuite_locations`;
DROP TABLE IF EXISTS `netsuite_mappings`;
DROP TABLE IF EXISTS `netsuite_projects`;
DROP TABLE IF EXISTS `netsuite_subsidiaries`;
DROP TABLE IF EXISTS `netsuite_taxcodes`;
DROP TABLE IF EXISTS `netsuite_users`;
DROP TABLE IF EXISTS `netsuite_vendors`;
DROP TABLE IF EXISTS `openair_categories`;
DROP TABLE IF EXISTS `openair_clients`;
DROP TABLE IF EXISTS `openair_companies`;
DROP TABLE IF EXISTS `openair_mappings`;
DROP TABLE IF EXISTS `openair_projects`;
DROP TABLE IF EXISTS `openair_users`;
DROP TABLE IF EXISTS `openid_user_mappings`;
DROP TABLE IF EXISTS `policies`;
DROP TABLE IF EXISTS `progresses`;
DROP TABLE IF EXISTS `qbd_accounts`;
DROP TABLE IF EXISTS `qbd_classes`;
DROP TABLE IF EXISTS `qbd_companies`;
DROP TABLE IF EXISTS `qbd_customers_jobs`;
DROP TABLE IF EXISTS `qbd_employees`;
DROP TABLE IF EXISTS `qbd_jobs`;
DROP TABLE IF EXISTS `qbd_mappings`;
DROP TABLE IF EXISTS `qbd_users`;
DROP TABLE IF EXISTS `qbd_vendors`;
DROP TABLE IF EXISTS `qboe_accounts`;
DROP TABLE IF EXISTS `qboe_classes`;
DROP TABLE IF EXISTS `qboe_companies`;
DROP TABLE IF EXISTS `qboe_customers_jobs`;
DROP TABLE IF EXISTS `qboe_employees`;
DROP TABLE IF EXISTS `qboe_mappings`;
DROP TABLE IF EXISTS `qboe_users`;
DROP TABLE IF EXISTS `qboe_vendors`;
DROP TABLE IF EXISTS `queue_requests`;
DROP TABLE IF EXISTS `recurrences`;
DROP TABLE IF EXISTS `report_approvals`;
DROP TABLE IF EXISTS `report_histories`;
DROP TABLE IF EXISTS `report_outlines`;
DROP TABLE IF EXISTS `report_tmps`;
DROP TABLE IF EXISTS `reports`;
DROP TABLE IF EXISTS `states`;
DROP TABLE IF EXISTS `subscription_coupons`;
DROP TABLE IF EXISTS `subscription_plans`;
DROP TABLE IF EXISTS `subscription_profiles`;
DROP TABLE IF EXISTS `system_users`;
DROP TABLE IF EXISTS `tags`;
DROP TABLE IF EXISTS `tasks`;
DROP TABLE IF EXISTS `taxes`;
DROP TABLE IF EXISTS `taxes_categories`;
DROP TABLE IF EXISTS `template_columns`;
DROP TABLE IF EXISTS `template_mappings`;
DROP TABLE IF EXISTS `template_settings`;
DROP TABLE IF EXISTS `templates`;
DROP TABLE IF EXISTS `time_entries`;
DROP TABLE IF EXISTS `time_entry_details`;
DROP TABLE IF EXISTS `time_policies`;
DROP TABLE IF EXISTS `timesheet_approvals`;
DROP TABLE IF EXISTS `timesheet_histories`;
DROP TABLE IF EXISTS `timesheet_templates`;
DROP TABLE IF EXISTS `timesheets`;
DROP TABLE IF EXISTS `tmp_maps`;
DROP TABLE IF EXISTS `travel_data_commons`;
DROP TABLE IF EXISTS `travel_data_lodgings`;
DROP TABLE IF EXISTS `travel_data_transportations`;
DROP TABLE IF EXISTS `travel_sources`;
DROP TABLE IF EXISTS `travel_sources_users`;
DROP TABLE IF EXISTS `travel_tripit_users`;
DROP TABLE IF EXISTS `travel_trips`;
DROP TABLE IF EXISTS `tripit_airs`;
DROP TABLE IF EXISTS `tripit_cars`;
DROP TABLE IF EXISTS `tripit_lodgings`;
DROP TABLE IF EXISTS `tripit_trips`;
DROP TABLE IF EXISTS `tripit_users`;
DROP TABLE IF EXISTS `user_account_providers`;
DROP TABLE IF EXISTS `user_email_changes`;
DROP TABLE IF EXISTS `user_login_tracks`;
DROP TABLE IF EXISTS `user_open_ids`;
DROP TABLE IF EXISTS `user_receipt_emails`;
DROP TABLE IF EXISTS `user_request_invitations`;
DROP TABLE IF EXISTS `user_signup_tracks`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `yodlee_categories`;
DROP TABLE IF EXISTS `yodlee_errors`;
DROP TABLE IF EXISTS `yodlees`;


CREATE TABLE `account_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(45) NOT NULL,
  `account_item_id` varchar(45) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_expense` double NOT NULL DEFAULT '0',
  `paid` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('active','closed') NOT NULL DEFAULT 'active',
  `currency` char(3) NOT NULL DEFAULT 'USD',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `account_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `mfa` varchar(255) NOT NULL,
  `type` enum('credits','bank') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1468 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `total_user` int(11) NOT NULL,
  `total_paid_user` int(11) NOT NULL,
  `total_free_user` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_user` int(11) NOT NULL,
  `total_paid_user` int(11) NOT NULL,
  `total_free_user` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`category_name`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`name`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`name`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`name`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=1496 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_overtimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`name`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`,`tag_id`),
  KEY `user_id_2` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_expense_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `amount` double NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;


CREATE TABLE `analytic_logins` (
  `date` date NOT NULL,
  `total_logins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `analytics` (
  `date` date NOT NULL,
  `total_free` int(11) NOT NULL DEFAULT '0',
  `total_pending` int(11) NOT NULL DEFAULT '0',
  `total_paid` int(11) NOT NULL DEFAULT '0',
  `total_company` int(11) DEFAULT '0',
  `total_logins` int(11) DEFAULT '0',
  `total_unique_logins` int(11) NOT NULL DEFAULT '0',
  `unique_login_users` longtext NOT NULL,
  `total_users` int(11) DEFAULT NULL,
  `users_indiv` int(11) DEFAULT NULL,
  `users10` int(11) DEFAULT NULL,
  `users25` int(11) DEFAULT NULL,
  `users50` int(11) DEFAULT NULL,
  `users100` int(11) DEFAULT NULL,
  `total_revenue` decimal(10,2) DEFAULT '0.00',
  `new_revenue` decimal(10,2) DEFAULT '0.00',
  `arpu` decimal(10,2) DEFAULT '0.00',
  `total_cancel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `auth_features` (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) DEFAULT NULL COMMENT 'Paid > 0, the user has to pay to use this feature',
  `rules` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Rule (a formular of macros), with || and && only',
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `billing_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `paypal_profile_id` varchar(100) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double NOT NULL,
  `description` text NOT NULL COMMENT 'If that is from Recurly, it will contain line items and transactions',
  `address` text NOT NULL COMMENT 'this will include account first name and account lastname if that is from Recurly',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;


CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` enum('Normal','FromTo') NOT NULL DEFAULT 'Normal',
  `status` enum('Active','Deleted') NOT NULL DEFAULT 'Active',
  `default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned NOT NULL,
  `system_default` enum('Yes','No') NOT NULL DEFAULT 'No' COMMENT 'system_default=Yes => System Category and system_default=No => User Category',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `general_ledger_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_user_id_custom_user_id` (`name`,`user_id`,`custom_user_id`),
  KEY `status` (`status`),
  KEY `user_id` (`user_id`),
  KEY `custom_user_id` (`custom_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=590380 DEFAULT CHARSET=latin1;


CREATE TABLE `category_tmps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `common_identifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `mileage_rate` double NOT NULL,
  `mileage_personal_rate` double NOT NULL DEFAULT '0.555',
  `mileage_charity_rate` double NOT NULL DEFAULT '0.555',
  `country_id` int(11) DEFAULT NULL,
  `work_phone` varchar(50) DEFAULT NULL,
  `industry_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `allow_custom_categories` enum('Yes','No') NOT NULL DEFAULT 'No',
  `allow_custom_mileage_rate` enum('Yes','No') NOT NULL DEFAULT 'No',
  `allow_custom_template` enum('Yes','No') NOT NULL DEFAULT 'No',
  `allow_custom_policies` enum('Yes','No') NOT NULL DEFAULT 'No',
  `allow_change_department` enum('Yes','No') DEFAULT 'No',
  `allow_user_integrations` enum('Yes','No') NOT NULL DEFAULT 'No',
  `allow_recall_paid_report` enum('Yes','No') DEFAULT 'Yes',
  `allow_travel_orbitz` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `category_migrated` enum('Yes','No') NOT NULL DEFAULT 'No',
  `one_click_approval` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`),
  UNIQUE KEY `owner_unique` (`owner_id`),
  KEY `owner_id` (`owner_id`),
  KEY `lft` (`lft`,`rght`),
  KEY `category_migrated` (`category_migrated`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;


CREATE TABLE `company_industries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` int(10) unsigned DEFAULT '1',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


CREATE TABLE `company_invitation_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `number_of_whitelist_invitations` int(5) NOT NULL,
  `limit_invitation_quota` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;


CREATE TABLE `company_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `approver_email` varchar(50) DEFAULT NULL,
  `approver_email2` varchar(50) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `sender_id` int(11) unsigned DEFAULT NULL,
  `status` enum('Denied','Invited','Temp','SendLater','InProgress','PendingForSystemAdminApproval','DeniedBySystemAdmin') NOT NULL DEFAULT 'Temp',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `approver_email` (`approver_email`,`user_email`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;


CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


CREATE TABLE `constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `countries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `has_state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;


CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(45) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;


CREATE TABLE `custom_classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `root_id` int(11) unsigned DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `custom_user_id` (`custom_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


CREATE TABLE `custom_customers_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `sublevel` int(1) DEFAULT '0',
  `type` enum('project','client') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project',
  `active` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `default_rate` double(5,2) DEFAULT NULL,
  `default_currency` varchar(3) DEFAULT NULL,
  `default_billing_type` enum('Task','Employee','Project') NOT NULL DEFAULT 'Project',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `custom_user_id` (`custom_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;


CREATE TABLE `custom_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_code` varchar(10) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `sublevel` int(11) DEFAULT '0',
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `root_id` (`root_id`),
  KEY `user_id` (`user_id`),
  KEY `custom_user_id` (`custom_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1592 DEFAULT CHARSET=latin1;


CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` enum('BlackList','WhiteList','GrayList') NOT NULL DEFAULT 'GrayList',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UniqueDomainName` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;


CREATE TABLE `email_approvals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `campaign_use_for` enum('NewSignupUsers','HolidayNewsletter','NetsuiteUser','CompanyOwner') NOT NULL DEFAULT 'NewSignupUsers',
  `status` enum('ReadyForApproval','SeemSpam') NOT NULL DEFAULT 'ReadyForApproval',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `use_for` enum('NewSignupUsers','HolidayNewsletter','NetsuiteUser','CompanyOwner') NOT NULL DEFAULT 'NewSignupUsers',
  `type` enum('once','daily','weekly','monthly') NOT NULL,
  `start_date` date NOT NULL,
  `months` varchar(100) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  `dayofweek` varchar(100) DEFAULT NULL,
  `email_template_id` int(11) NOT NULL,
  `from_email` varchar(100) NOT NULL,
  `reply_to_email` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `template_layout` varchar(50) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `AED` double DEFAULT NULL,
  `AFN` double DEFAULT NULL,
  `ALL` double DEFAULT NULL,
  `AMD` double DEFAULT NULL,
  `ANG` double DEFAULT NULL,
  `AOA` double DEFAULT NULL,
  `ARS` double DEFAULT NULL,
  `AUD` double DEFAULT NULL,
  `AWG` double DEFAULT NULL,
  `AZN` double DEFAULT NULL,
  `BAM` double DEFAULT NULL,
  `BBD` double DEFAULT NULL,
  `BDT` double DEFAULT NULL,
  `BGN` double DEFAULT NULL,
  `BHD` double DEFAULT NULL,
  `BIF` double DEFAULT NULL,
  `BMD` double DEFAULT NULL,
  `BND` double DEFAULT NULL,
  `BOB` double DEFAULT NULL,
  `BRL` double DEFAULT NULL,
  `BSD` double DEFAULT NULL,
  `BTN` double DEFAULT NULL,
  `BWP` double DEFAULT NULL,
  `BYR` double DEFAULT NULL,
  `BZD` double DEFAULT NULL,
  `CAD` double DEFAULT NULL,
  `CDF` double DEFAULT NULL,
  `CHF` double DEFAULT NULL,
  `CLP` double DEFAULT NULL,
  `CNY` double DEFAULT NULL,
  `COP` double DEFAULT NULL,
  `CRC` double DEFAULT NULL,
  `CUP` double DEFAULT NULL,
  `CVE` double DEFAULT NULL,
  `CZK` double DEFAULT NULL,
  `DJF` double DEFAULT NULL,
  `DKK` double DEFAULT NULL,
  `DOP` double DEFAULT NULL,
  `DZD` double DEFAULT NULL,
  `EEK` double DEFAULT NULL,
  `EGP` double DEFAULT NULL,
  `ERN` double DEFAULT NULL,
  `ETB` double DEFAULT NULL,
  `EUR` double DEFAULT NULL,
  `FJD` double DEFAULT NULL,
  `FKP` double DEFAULT NULL,
  `GBP` double DEFAULT NULL,
  `GEL` double DEFAULT NULL,
  `GGP` double DEFAULT NULL,
  `GHS` double DEFAULT NULL,
  `GIP` double DEFAULT NULL,
  `GMD` double DEFAULT NULL,
  `GNF` double DEFAULT NULL,
  `GTQ` double DEFAULT NULL,
  `GYD` double DEFAULT NULL,
  `HKD` double DEFAULT NULL,
  `HNL` double DEFAULT NULL,
  `HRK` double DEFAULT NULL,
  `HTG` double DEFAULT NULL,
  `HUF` double DEFAULT NULL,
  `IDR` double DEFAULT NULL,
  `ILS` double DEFAULT NULL,
  `IMP` double DEFAULT NULL,
  `INR` double DEFAULT NULL,
  `IQD` double DEFAULT NULL,
  `IRR` double DEFAULT NULL,
  `ISK` double DEFAULT NULL,
  `JEP` double DEFAULT NULL,
  `JMD` double DEFAULT NULL,
  `JOD` double DEFAULT NULL,
  `JPY` double DEFAULT NULL,
  `KES` double DEFAULT NULL,
  `KGS` double DEFAULT NULL,
  `KHR` double DEFAULT NULL,
  `KMF` double DEFAULT NULL,
  `KPW` double DEFAULT NULL,
  `KRW` double DEFAULT NULL,
  `KWD` double DEFAULT NULL,
  `KYD` double DEFAULT NULL,
  `KZT` double DEFAULT NULL,
  `LAK` double DEFAULT NULL,
  `LBP` double DEFAULT NULL,
  `LKR` double DEFAULT NULL,
  `LRD` double DEFAULT NULL,
  `LSL` double DEFAULT NULL,
  `LTL` double DEFAULT NULL,
  `LVL` double DEFAULT NULL,
  `LYD` double DEFAULT NULL,
  `MAD` double DEFAULT NULL,
  `MDL` double DEFAULT NULL,
  `MGA` double DEFAULT NULL,
  `MKD` double DEFAULT NULL,
  `MMK` double DEFAULT NULL,
  `MNT` double DEFAULT NULL,
  `MOP` double DEFAULT NULL,
  `MRO` double DEFAULT NULL,
  `MUR` double DEFAULT NULL,
  `MVR` double DEFAULT NULL,
  `MWK` double DEFAULT NULL,
  `MXN` double DEFAULT NULL,
  `MYR` double DEFAULT NULL,
  `MZN` double DEFAULT NULL,
  `NAD` double DEFAULT NULL,
  `NGN` double DEFAULT NULL,
  `NIO` double DEFAULT NULL,
  `NOK` double DEFAULT NULL,
  `NPR` double DEFAULT NULL,
  `NZD` double DEFAULT NULL,
  `OMR` double DEFAULT NULL,
  `PAB` double DEFAULT NULL,
  `PEN` double DEFAULT NULL,
  `PGK` double DEFAULT NULL,
  `PHP` double DEFAULT NULL,
  `PKR` double DEFAULT NULL,
  `PLN` double DEFAULT NULL,
  `PYG` double DEFAULT NULL,
  `QAR` double DEFAULT NULL,
  `RON` double DEFAULT NULL,
  `RSD` double DEFAULT NULL,
  `RUB` double DEFAULT NULL,
  `RWF` double DEFAULT NULL,
  `SAR` double DEFAULT NULL,
  `SBD` double DEFAULT NULL,
  `SCR` double DEFAULT NULL,
  `SDG` double DEFAULT NULL,
  `SEK` double DEFAULT NULL,
  `SGD` double DEFAULT NULL,
  `SHP` double DEFAULT NULL,
  `SLL` double DEFAULT NULL,
  `SOS` double DEFAULT NULL,
  `SPL` double DEFAULT NULL,
  `SRD` double DEFAULT NULL,
  `STD` double DEFAULT NULL,
  `SVC` double DEFAULT NULL,
  `SYP` double DEFAULT NULL,
  `SZL` double DEFAULT NULL,
  `THB` double DEFAULT NULL,
  `TJS` double DEFAULT NULL,
  `TMM` double DEFAULT NULL,
  `TND` double DEFAULT NULL,
  `TOP` double DEFAULT NULL,
  `TRY` double DEFAULT NULL,
  `TTD` double DEFAULT NULL,
  `TVD` double DEFAULT NULL,
  `TWD` double DEFAULT NULL,
  `TZS` double DEFAULT NULL,
  `UAH` double DEFAULT NULL,
  `UGX` double DEFAULT NULL,
  `USD` double DEFAULT '1',
  `UYU` double DEFAULT NULL,
  `UZS` double DEFAULT NULL,
  `VEF` double DEFAULT NULL,
  `VND` double DEFAULT NULL,
  `VUV` double DEFAULT NULL,
  `WST` double DEFAULT NULL,
  `XCD` double DEFAULT NULL,
  `YER` double DEFAULT NULL,
  `ZAR` double DEFAULT NULL,
  `ZMK` double DEFAULT NULL,
  `ZWD` double DEFAULT NULL,
  `NTD` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `expense_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('Verified','Unverified') NOT NULL DEFAULT 'Unverified',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_id` (`expense_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1452 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_payment_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `filedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_id` (`expense_id`),
  KEY `date` (`date`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2034 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `personal` enum('yes','no') DEFAULT 'no',
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('Company','User') NOT NULL DEFAULT 'User',
  `category_id` int(11) NOT NULL,
  `populated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_id` (`expense_id`,`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_id` (`expense_id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;


CREATE TABLE `expense_tmps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `simple_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_amount` double DEFAULT NULL,
  `original_currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `conversion_rate` float DEFAULT NULL,
  `conversion_increase_rate` double DEFAULT NULL,
  `mileage_amount` float DEFAULT NULL,
  `mileage_rate` float DEFAULT NULL,
  `mileage_type` enum('miles','km') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'miles',
  `mileage_category` enum('Business','Personal','Charity') DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `paid` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `billable` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `status` enum('Active','Submitted','Personal','Deleted') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `client` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clazz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attendees` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` enum('ExpenseCloud','CSV','Credit CSV','Iphone','Bank','Ids','EmailReceipt') NOT NULL DEFAULT 'ExpenseCloud',
  `source_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_account_provider_id` int(11) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hour` float DEFAULT NULL,
  `hourly_rate` float DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `reconciled` enum('Yes','No') DEFAULT 'No',
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`),
  KEY `date` (`date`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=28338 DEFAULT CHARSET=latin1;


CREATE TABLE `export_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `integration` enum('Netsuite','Intacct') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `report_ids` text NOT NULL,
  `message` text,
  `showed` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `freshbooks_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `eb_cat_id` int(11) NOT NULL,
  `fbs_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `freshbooks_clients` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL,
  `client_id` int(8) DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;


CREATE TABLE `freshbooks_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eb_expense_id` int(11) NOT NULL,
  `fbs_expense_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `freshbooks_projects` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL,
  `project_id` int(8) unsigned DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `freshbooks_client_id` int(8) DEFAULT NULL,
  `active` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=331 DEFAULT CHARSET=latin1;


CREATE TABLE `freshbooks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbs_registered_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `api_url` varchar(100) NOT NULL,
  `authentication_token` varchar(100) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


CREATE TABLE `google_contact_temps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `status` enum('Selected','Available') DEFAULT 'Available',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;


CREATE TABLE `googleapp_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE `hourly_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `rate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;


CREATE TABLE `ids_account_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids_account_id` varchar(45) NOT NULL,
  `ids_account_item_id` varchar(45) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_expense` double NOT NULL DEFAULT '0',
  `paid` enum('Yes','No') NOT NULL DEFAULT 'No',
  `invert` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('active','closed') NOT NULL DEFAULT 'active',
  `currency` char(3) NOT NULL DEFAULT 'USD',
  `ids_account_item_type` varchar(50) DEFAULT NULL,
  `ids_account_item_type_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=533 DEFAULT CHARSET=latin1;


CREATE TABLE `ids_account_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `ids_errors` (
  `id` varchar(5) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `ids_user_account_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ids_account_provider_id` int(11) NOT NULL,
  `ids_account_id` varchar(45) DEFAULT NULL,
  `last_error` varchar(255) DEFAULT NULL,
  `last_error_code` varchar(5) DEFAULT NULL,
  `last_updated` varchar(30) DEFAULT NULL,
  `last_transaction_date` varchar(30) DEFAULT NULL,
  `total_expense` double NOT NULL DEFAULT '0',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `paid` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;


CREATE TABLE `industry_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `personal` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


CREATE TABLE `info_boxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Expense','GLAccount','Bank') NOT NULL DEFAULT 'Expense',
  `intacct_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=645 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `intacct_company_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_intacct_company_id` (`code`,`intacct_company_id`),
  KEY `intacct_company_id` (`intacct_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;


CREATE TABLE `intacct_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `entity_id` varchar(50) DEFAULT NULL,
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_creditcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `expire_month` int(2) DEFAULT NULL,
  `expire_year` int(4) DEFAULT NULL,
  `intacct_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intacct_company_id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intacct_company_id` (`intacct_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intacct_company_id` int(111) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=782 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_departments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `manager_code` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_intacct_company_id` (`code`,`intacct_company_id`),
  KEY `intacct_company_id` (`intacct_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;


CREATE TABLE `intacct_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) NOT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `manager_code` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_intacct_company_id` (`code`,`intacct_company_id`),
  KEY `intacct_company_id` (`intacct_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;


CREATE TABLE `intacct_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intacct_company_id` int(11) NOT NULL,
  `intacct_category_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `intacct_gl_category_code` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`category_id`,`intacct_category_code`,`intacct_company_id`,`owner_id`,`owner_type`,`intacct_gl_category_code`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intacct_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `intacct_customer_id` int(11) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32527 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `intacct_employee_id` varchar(50) DEFAULT NULL,
  `entity_mode` enum('Single','Entity','Location') NOT NULL DEFAULT 'Single',
  `entity_id` varchar(50) DEFAULT NULL,
  `to` varchar(100) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) NOT NULL,
  `default_category_code` varchar(100) DEFAULT NULL,
  `default_gl_account_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_item_code` varchar(100) DEFAULT NULL,
  `default_vendor_code` varchar(100) DEFAULT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  `show_project_id` tinyint(1) NOT NULL DEFAULT '0',
  `import_department` tinyint(1) NOT NULL DEFAULT '0',
  `import_class` tinyint(1) NOT NULL DEFAULT '0',
  `import_location` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `intacct_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `intacct_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2664 DEFAULT CHARSET=latin1;


CREATE TABLE `integrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `company_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned DEFAULT NULL,
  `freshbooks_user_id` int(11) unsigned DEFAULT NULL,
  `qbd_user_id` int(11) unsigned DEFAULT NULL,
  `qboe_user_id` int(11) unsigned DEFAULT NULL,
  `intacct_user_id` int(11) unsigned DEFAULT NULL,
  `netsuite_user_id` int(11) unsigned DEFAULT NULL,
  `openair_user_id` int(11) unsigned DEFAULT NULL,
  `type` enum('Custom','Qboe','Qbd','Netsuite','Intacct','Freshbooks') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Custom',
  `visibility` enum('User','Company') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`),
  KEY `custom_user_id` (`custom_user_id`),
  KEY `freshbooks_user_id` (`freshbooks_user_id`),
  KEY `qbd_user_id` (`qbd_user_id`),
  KEY `qboe_user_id` (`qboe_user_id`),
  KEY `intacct_user_id` (`intacct_user_id`),
  KEY `netsuite_user_id` (`netsuite_user_id`),
  KEY `openair_user_id` (`openair_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `integrations_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `integration_id` int(11) unsigned NOT NULL COMMENT 'refer to table integrations',
  `user_id` int(11) unsigned NOT NULL COMMENT 'refer to table users',
  `permission` enum('Export','View','Owner','Disconnect') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'View',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `integration_id_user_id` (`integration_id`,`user_id`),
  KEY `integration_id` (`integration_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `ios_device_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `device_token_id` varchar(255) NOT NULL,
  `type` enum('iPhone','iPad') NOT NULL DEFAULT 'iPhone',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;


CREATE TABLE `iphone_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iphone_category_id` int(11) NOT NULL,
  `iphone_category_name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `user_id` int(11) unsigned NOT NULL,
  `custom_user_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `sublevel` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `root_id` (`root_id`),
  KEY `user_id` (`user_id`),
  KEY `custom_user_id` (`custom_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;


CREATE TABLE `mobile_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` enum('Netsuite','Intacct','Freshbooks','Qbd','Qboe','Custom') DEFAULT NULL,
  `source_id` int(11) NOT NULL,
  `integration_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'this client is owned by this employee',
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `integration_id` (`integration_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;


CREATE TABLE `mobile_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_client_id` int(11) NOT NULL,
  `source` enum('Netsuite','Intacct','Freshbooks','Qbd','Qboe','Custom') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` int(11) NOT NULL,
  `integration_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'this project is owned by this employee/individial',
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `integration_id` (`integration_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Expense','GLAccount') NOT NULL DEFAULT 'Expense',
  `netsuite_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=393 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `netsuite_company_id` int(11) unsigned DEFAULT NULL,
  `subsidiary_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_netsuite_company_id` (`code`,`netsuite_company_id`),
  KEY `netsuite_company_id` (`netsuite_company_id`),
  KEY `subsidiary_id` (`subsidiary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


CREATE TABLE `netsuite_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_id` varchar(10) DEFAULT NULL,
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netsuite_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `netsuite_company_id` (`netsuite_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netsuite_company_id` int(111) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `subsidiary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2456 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_departments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `manager_code` varchar(100) DEFAULT NULL,
  `netsuite_company_id` int(11) unsigned DEFAULT NULL,
  `subsidiary_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_netsuite_company_id` (`code`,`netsuite_company_id`),
  KEY `netsuite_company_id` (`netsuite_company_id`),
  KEY `subsidiary_id` (`subsidiary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;


CREATE TABLE `netsuite_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `netsuite_company_id` int(11) NOT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `manager_code` varchar(100) DEFAULT NULL,
  `netsuite_company_id` int(11) unsigned DEFAULT NULL,
  `subsidiary_id` int(11) unsigned DEFAULT NULL,
  `inventory_available` enum('Yes','No') DEFAULT NULL,
  `inventory_webstore_available` enum('Yes','No') DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_netsuite_company_id` (`code`,`netsuite_company_id`),
  KEY `netsuite_company_id` (`netsuite_company_id`),
  KEY `subsidiary_id` (`subsidiary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


CREATE TABLE `netsuite_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netsuite_company_id` int(11) NOT NULL,
  `netsuite_category_code` varchar(100) NOT NULL,
  `netsuite_gl_category_code` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`netsuite_company_id`,`netsuite_category_code`,`netsuite_gl_category_code`,`category_id`,`owner_id`,`owner_type`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netsuite_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `netsuite_customer_id` int(11) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `subsidiary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_subsidiaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_code` varchar(255) DEFAULT NULL,
  `parent_code` varchar(255) DEFAULT NULL,
  `netsuite_company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_taxcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netsuite_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `netsuite_entity_id` int(11) NOT NULL COMMENT 'this id is maybe FK of vendor or employee',
  `entity_type` enum('Vendor','Employee') NOT NULL DEFAULT 'Vendor',
  PRIMARY KEY (`id`),
  KEY `netsuite_company_id` (`netsuite_company_id`),
  KEY `netsuite_vendor_id` (`netsuite_entity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `netsuite_employee_id` varchar(50) DEFAULT NULL,
  `to` varchar(100) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `netsuite_company_id` int(11) NOT NULL,
  `default_category_code` varchar(100) DEFAULT NULL,
  `default_gl_account_code` varchar(100) DEFAULT NULL,
  `default_vendor_code` varchar(100) DEFAULT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `using_client_project` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  `send_approved_report_to` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: MultiEntry, 0: Single',
  `sync_customers` enum('Corporate','Individual','None','All') NOT NULL DEFAULT 'Corporate',
  `default_taxcode` varchar(100) DEFAULT NULL,
  `sync_customers_stage` varchar(250) NOT NULL DEFAULT 'CUSTOMER,LEAD,PROSPECT',
  `import_department` tinyint(1) NOT NULL DEFAULT '0',
  `import_class` tinyint(1) NOT NULL DEFAULT '0',
  `import_location` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;


CREATE TABLE `netsuite_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `netsuite_company_id` int(11) NOT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;


CREATE TABLE `openair_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `openair_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openair_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openair_company_id` int(111) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sync_to_mobile` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openair_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openair_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openair_company_id` int(11) NOT NULL,
  `openair_category_code` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`category_id`,`openair_company_id`,`owner_id`,`owner_type`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openair_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openair_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `openair_client_id` int(11) DEFAULT NULL,
  `sync_to_mobile` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openair_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `openair_employee_id` varchar(50) DEFAULT NULL,
  `to` varchar(100) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `openair_company_id` int(11) NOT NULL,
  `default_category_code` varchar(100) DEFAULT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `openid_user_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


CREATE TABLE `policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  `name` varchar(100) NOT NULL,
  `rules` text NOT NULL,
  `template` varchar(20) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;


CREATE TABLE `progresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` enum('Company','User','System') DEFAULT NULL,
  `key` varchar(100) NOT NULL,
  `message` text,
  `status` enum('Running','Completed') NOT NULL DEFAULT 'Running',
  `display` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `lifetime` int(6) DEFAULT '0',
  `result` text,
  `refresh_on_complete` enum('Yes','No') DEFAULT 'No',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`owner_id`,`owner_type`,`key`),
  KEY `owner_key` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=664 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` enum('Expense','Bank','Accounts Payable','Cost of Goods Sold','Fixed Asset','Other Current Asset','Other Current Liability','Credit Card') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Expense',
  `qbd_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueQbdAccount` (`parent_code`,`code`,`name`,`type`,`qbd_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sublevel` int(1) DEFAULT NULL,
  `parent_fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `qbd_company_id` int(11) NOT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueQbdClass` (`parent_code`,`code`,`name`,`qbd_company_id`),
  KEY `qbd_company_id` (`qbd_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_customers_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `sublevel` int(1) DEFAULT '0',
  `type` enum('project','client') NOT NULL DEFAULT 'project',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qbd_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qbd_company_id` (`qbd_company_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50071 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qbd_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `customer_id` int(11) NOT NULL,
  `qbd_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qbd_company_id` int(11) NOT NULL,
  `qbd_category_code` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`category_id`,`qbd_company_id`,`owner_id`,`owner_type`,`qbd_category_code`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(100) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `qbd_company_id` int(11) NOT NULL,
  `default_category_code` varchar(100) DEFAULT NULL,
  `default_vendor_code` varchar(100) DEFAULT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  `ia_access_token` varchar(255) DEFAULT NULL,
  `ia_access_secret` varchar(255) DEFAULT NULL,
  `import_class` tinyint(1) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;


CREATE TABLE `qbd_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `qbd_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qboe_company_id` int(11) NOT NULL,
  `parent_id` varchar(100) DEFAULT '0',
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent_fullname` text,
  `sublevel` int(10) unsigned DEFAULT NULL,
  `type` enum('Expense','Bank','CreditCard','Accounts Payable','Other Current Liabilities','Other Current Assets','Cost of Goods Sold','Fixed Asset') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Expense',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=507 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) NOT NULL DEFAULT '0',
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sublevel` int(1) DEFAULT NULL,
  `parent_fullname` varchar(255) DEFAULT NULL,
  `qboe_company_id` int(11) NOT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `sync_to_mobile` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueQboeClass` (`parent_code`,`code`,`name`,`qboe_company_id`),
  KEY `qboe_company_id` (`qboe_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `last_sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_customers_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sublevel` int(1) DEFAULT NULL,
  `type` enum('project','client') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qboe_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `qboe_company_id` (`qboe_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1454 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qboe_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `qboe_category_code` varchar(100) NOT NULL,
  `qboe_company_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`category_id`,`qboe_company_id`,`owner_id`,`owner_type`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qboe_company_id` int(11) NOT NULL,
  `connection_ticket` varchar(100) DEFAULT NULL,
  `to` varchar(100) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `default_category_code` varchar(100) DEFAULT NULL,
  `default_vendor_code` varchar(100) DEFAULT NULL,
  `no_validate_policy` tinyint(1) NOT NULL DEFAULT '1',
  `mark_paid` tinyint(1) NOT NULL DEFAULT '0',
  `ia_access_token` varchar(255) DEFAULT NULL,
  `ia_access_secret` varchar(255) DEFAULT NULL,
  `import_class` tinyint(1) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;


CREATE TABLE `qboe_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qboe_company_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=544 DEFAULT CHARSET=latin1;


CREATE TABLE `queue_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` enum('Report','Timesheet') DEFAULT 'Report',
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `foreign_key` (`foreign_key`)
) ENGINE=MyISAM AUTO_INCREMENT=671 DEFAULT CHARSET=latin1;


CREATE TABLE `recurrences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `frequency` enum('monthly') NOT NULL DEFAULT 'monthly',
  `date_of_month` tinyint(4) DEFAULT NULL,
  `enable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `last_execution` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `last_execution` (`last_execution`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


CREATE TABLE `report_approvals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sent_to` enum('Approver','Bookkeeper','QuickBooks Online','QuickBooks Desktop','Netsuite','Intacct','OpenAir','Freshbooks','Archive as Personal') NOT NULL DEFAULT 'Approver',
  `approver_id` int(11) NOT NULL,
  `status` enum('Pending','Approved','Rejected','Recalled','Archived') NOT NULL,
  `approved_date` datetime DEFAULT NULL,
  `submitted_date` datetime NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id` (`report_id`,`approver_id`),
  KEY `report_id_2` (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=latin1;


CREATE TABLE `report_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approval_name` varchar(100) DEFAULT NULL,
  `action` enum('Approved','Rejected','Downloaded','Exported','Updated') DEFAULT NULL,
  `destination` enum('Approver','Bookkeeper','QuickBooks Online','QuickBooks Desktop','Netsuite','Intacct','Openair','Freshbooks','Payroll','PDF','CSV','Payroll CSV','Personal Archive','Payment') DEFAULT NULL,
  `created` datetime NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`),
  KEY `action` (`action`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=1891 DEFAULT CHARSET=latin1;


CREATE TABLE `report_outlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('OneTime','Recurring','Trip') NOT NULL DEFAULT 'Recurring',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `recurring_type` enum('Weekly','Monthly','Trip') DEFAULT NULL,
  `recurring_value` varchar(100) DEFAULT NULL,
  `rules` text,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') NOT NULL DEFAULT 'Company',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;


CREATE TABLE `report_tmps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `submitted` enum('Yes','No') NOT NULL DEFAULT 'No',
  `submitted_date` datetime DEFAULT NULL,
  `submitted_to` enum('Approver','Bookkeeper','QuickBooks Online','QuickBooks Desktop','Netsuite','Intacct','Payroll','OpenAir','FreshBooks','CSV','Salesforce','Archive as Personal') DEFAULT NULL,
  `paid_info` text,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `explainable_violations` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=583 DEFAULT CHARSET=latin1;


CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=424 DEFAULT CHARSET=latin1;


CREATE TABLE `subscription_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_code` int(11) NOT NULL,
  `subscription_profile_id` int(11) NOT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `single_use` tinyint(1) DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;


CREATE TABLE `subscription_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `base_licenses` int(11) DEFAULT NULL,
  `base_cost_monthly` double DEFAULT NULL,
  `base_cost_yearly` double DEFAULT NULL,
  `rate_per_additional_user_monthly` double DEFAULT NULL,
  `rate_per_additional_user_yearly` double DEFAULT NULL,
  `plan_code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


CREATE TABLE `subscription_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) DEFAULT NULL,
  `allowed_licenses` int(11) DEFAULT NULL,
  `expense_time_licenses` int(2) DEFAULT NULL COMMENT 'this license will be used for Time',
  `account_code` varchar(50) DEFAULT NULL COMMENT 'only for recurly profile, it will be empty when that is paypal profile',
  `profile_id` varchar(32) DEFAULT NULL COMMENT 'only for paypal profile, it will empty when this is recurly profile',
  `profile_status` enum('Active','Pending','Cancelled','Suspended') DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_type` enum('Visa','MasterCard','Discover','Amex','Maestro','Solo') DEFAULT NULL,
  `billing_amount` double DEFAULT NULL,
  `billing_period` enum('Month','Year','Direct') DEFAULT NULL,
  `billing_frequency` int(11) DEFAULT NULL,
  `next_payment_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `profile_cancel_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;


CREATE TABLE `system_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `last_login` timestamp NULL DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;


CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `company_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `paid` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `billable` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `default_rate` double(5,2) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;


CREATE TABLE `taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` double(5,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `taxes_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_id` (`tax_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `template_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `template_id` int(11) NOT NULL,
  `default` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=338 DEFAULT CHARSET=latin1;


CREATE TABLE `template_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_column_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('Company','User') NOT NULL,
  `template_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_column_id` (`category_id`,`owner_id`,`owner_type`,`template_id`),
  KEY `category_id` (`category_id`,`owner_id`,`owner_type`,`template_id`),
  KEY `owner_id` (`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=57061 DEFAULT CHARSET=latin1;


CREATE TABLE `template_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('User','Company') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `default_template_column_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_owner_unique` (`template_id`,`owner_id`,`owner_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1925 DEFAULT CHARSET=latin1;


CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `plugin_name` varchar(100) NOT NULL,
  `type` enum('Public','Private','Premium') NOT NULL DEFAULT 'Public',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;


CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` enum('Daily','Weekly','Clock') NOT NULL DEFAULT 'Daily',
  `weekly_code` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) DEFAULT '',
  `location_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `billable` enum('Yes','No') NOT NULL DEFAULT 'No',
  `hours` varchar(6) DEFAULT NULL,
  `status` enum('Active','Submitted','Deleted') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `timesheet_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;


CREATE TABLE `time_entry_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_entry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `status` enum('Running','Finished') DEFAULT 'Running',
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;


CREATE TABLE `time_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_client_required` enum('Yes','No') NOT NULL DEFAULT 'No',
  `is_project_required` enum('Yes','No') NOT NULL DEFAULT 'No',
  `is_department_required` enum('Yes','No') NOT NULL DEFAULT 'No',
  `is_location_required` enum('Yes','No') NOT NULL DEFAULT 'No',
  `overtime_per_day` varchar(6) DEFAULT NULL,
  `overtime_per_week` varchar(6) DEFAULT NULL,
  `overtime_per_month` varchar(6) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


CREATE TABLE `timesheet_approvals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timesheet_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sent_to` enum('Approver') NOT NULL DEFAULT 'Approver',
  `approver_id` int(11) NOT NULL,
  `status` enum('Pending','Approved','Rejected','Recalled') NOT NULL,
  `approved_date` datetime DEFAULT NULL,
  `submitted_date` datetime NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


CREATE TABLE `timesheet_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timesheet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approval_name` varchar(100) DEFAULT NULL,
  `action` enum('Approved','Rejected','Downloaded','Exported','Recalled') NOT NULL,
  `destination` enum('Approver','Bookkeeper','PDF','CSV') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timesheet_id` (`timesheet_id`),
  KEY `action` (`action`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;


CREATE TABLE `timesheet_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `plugin_name` varchar(100) NOT NULL,
  `type` enum('Public','Private','Premium') NOT NULL DEFAULT 'Public',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;


CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `submitted` enum('Yes','No') NOT NULL DEFAULT 'No',
  `submitted_date` datetime DEFAULT NULL,
  `submitted_to` enum('Approver','Bookkeeper','CSV') DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `explainable_violations` text,
  `note` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;


CREATE TABLE `tmp_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `executed` tinyint(1) DEFAULT '0',
  `query` longtext,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `executed` (`executed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `travel_data_commons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `travel_source_id` int(11) NOT NULL,
  `source_id` varchar(100) DEFAULT NULL,
  `source_type` varchar(100) NOT NULL,
  `travel_trip_id` int(11) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `travel_data_lodgings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `travel_source_id` int(11) NOT NULL,
  `source_id` varchar(100) DEFAULT NULL,
  `source_type` varchar(100) NOT NULL,
  `travel_trip_id` int(11) DEFAULT NULL,
  `provider` varchar(45) NOT NULL,
  `confirmation_number` varchar(45) NOT NULL,
  `daily_rate` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `number_rooms` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `travel_data_transportations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `travel_source_id` int(11) NOT NULL,
  `source_id` varchar(100) DEFAULT NULL,
  `source_type` varchar(100) NOT NULL,
  `travel_trip_id` int(11) DEFAULT NULL,
  `provider` varchar(45) NOT NULL,
  `confirmation_number` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `start_code` varchar(45) NOT NULL,
  `start_country` varchar(255) NOT NULL,
  `start_state` varchar(255) NOT NULL,
  `start_city` varchar(255) NOT NULL,
  `end_code` varchar(45) NOT NULL,
  `end_country` varchar(255) NOT NULL,
  `end_state` varchar(255) NOT NULL,
  `end_city` varchar(255) NOT NULL,
  `transportation_number` varchar(45) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;


CREATE TABLE `travel_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_model` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


CREATE TABLE `travel_sources_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `travel_source_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `support` enum('enabled','disabled') NOT NULL DEFAULT 'disabled',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `travel_source_id` (`travel_source_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


CREATE TABLE `travel_tripit_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `profile_address` varchar(100) DEFAULT NULL,
  `import_car` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `import_lodging` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `import_air` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `access_key` varchar(100) NOT NULL,
  `access_secret` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


CREATE TABLE `travel_trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `travel_source_id` int(11) NOT NULL,
  `source_id` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


CREATE TABLE `tripit_airs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `air_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `supplier_conf_num` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `start_airport_code` varchar(45) NOT NULL,
  `start_city_name` varchar(255) NOT NULL,
  `end_airport_code` varchar(45) NOT NULL,
  `end_city_name` varchar(255) NOT NULL,
  `marketing_airline` varchar(45) NOT NULL,
  `marketing_airline_code` varchar(45) NOT NULL,
  `marketing_flight_number` varchar(45) NOT NULL,
  `ticket_num` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `migrated` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


CREATE TABLE `tripit_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `display_name` varchar(45) NOT NULL,
  `supplier_conf_num` varchar(45) NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `migrated` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `tripit_lodgings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lodging_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `booking_rate` varchar(255) NOT NULL,
  `booking_site_conf_num` varchar(255) NOT NULL,
  `booking_site_name` varchar(255) NOT NULL,
  `booking_site_phone` varchar(255) NOT NULL,
  `booking_site_url` varchar(255) NOT NULL,
  `supplier_conf_num` varchar(255) NOT NULL,
  `supplier_phone` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `restrictions` text NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `number_rooms` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `migrated` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tripit_trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `primary_location` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `migrated` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


CREATE TABLE `tripit_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `profile_address` varchar(100) DEFAULT NULL,
  `import_car` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `import_lodging` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `import_air` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `access_key` varchar(100) NOT NULL,
  `access_secret` varchar(100) NOT NULL,
  `migrated` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


CREATE TABLE `user_account_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_provider_id` int(11) NOT NULL,
  `account_id` varchar(45) NOT NULL,
  `last_error` varchar(255) DEFAULT NULL,
  `last_updated` varchar(30) DEFAULT NULL,
  `last_transaction_date` varchar(30) DEFAULT NULL,
  `total_expense` double NOT NULL DEFAULT '0',
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `paid` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE `user_email_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `verify_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `previous_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Unverified','Verified') NOT NULL DEFAULT 'Unverified',
  `expire_date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`verify_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `user_login_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `same_time_counter` int(11) NOT NULL,
  `num_of_invited_users` int(11) NOT NULL DEFAULT '0',
  `last_report_created` datetime DEFAULT NULL,
  `logins_from_last_report_created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;


CREATE TABLE `user_open_ids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `claimed_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;


CREATE TABLE `user_receipt_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


CREATE TABLE `user_request_invitations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `company_id` int(11) unsigned NOT NULL,
  `status` enum('Requested','Denied') NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_email` (`user_email`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


CREATE TABLE `user_signup_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`created`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;


CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `secondary_email` varchar(45) DEFAULT NULL,
  `invoice_email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `old_password` varchar(255) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(10) DEFAULT NULL,
  `country_id` int(10) NOT NULL DEFAULT '1',
  `group_id` int(11) DEFAULT NULL,
  `role` enum('Admin','Bookkeeper','User') DEFAULT 'User',
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `zipcode` varchar(32) DEFAULT NULL,
  `mileage_rate` double NOT NULL DEFAULT '0.555',
  `mileage_personal_rate` double NOT NULL DEFAULT '0.555',
  `mileage_charity_rate` double NOT NULL DEFAULT '0.555',
  `default_hourly_rate` double NOT NULL DEFAULT '1',
  `mileage_type` enum('miles','km') NOT NULL DEFAULT 'miles',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `currency_increase_rate` float NOT NULL DEFAULT '0',
  `use_categories` enum('Company','Custom') DEFAULT 'Company',
  `default_custom_integration_id` int(11) DEFAULT NULL,
  `use_mileage_rate` enum('Company','Custom') DEFAULT 'Company',
  `use_template` enum('Company','Custom') DEFAULT 'Company',
  `use_policies` enum('Company','Custom') DEFAULT 'Company',
  `status` enum('Active','Inactive','Lock') DEFAULT 'Active',
  `last_login` timestamp NULL DEFAULT NULL,
  `subscription_profile_id` int(11) DEFAULT NULL,
  `license_type` enum('Expense','ExpenseTime') DEFAULT NULL,
  `subscribe_newsletter` enum('Yes','No') DEFAULT 'Yes',
  `receive_account_notices` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `login_from` enum('ExpenseCloud','OpenId','Mobile','IWP','GoogleApps','IA OpenId','Trinet','API','GoogleOpenId') NOT NULL DEFAULT 'ExpenseCloud',
  `login_from_details` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_from` enum('ExpenseCloud','Mobile','OpenId','Invitation','IWP','GoogleApps','IA OpenId','Trinet','GoogleOpenId') NOT NULL DEFAULT 'ExpenseCloud',
  `referrer` varchar(255) DEFAULT NULL,
  `register_ip` varchar(100) DEFAULT NULL,
  `login_ip` varchar(100) DEFAULT NULL,
  `signature` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `approver_id` int(11) DEFAULT NULL,
  `approver2_id` int(11) DEFAULT NULL,
  `employee_type` enum('Service','Hourly') DEFAULT 'Service',
  `default_currency` varchar(3) DEFAULT NULL,
  `default_task_id` int(11) DEFAULT NULL,
  `default_project_id` int(11) DEFAULT NULL,
  `default_client_id` int(11) DEFAULT NULL,
  `default_location_id` int(11) DEFAULT NULL,
  `default_rate` double(5,2) DEFAULT NULL,
  `approver_cc` varchar(100) DEFAULT NULL,
  `approver2_cc` varchar(100) DEFAULT NULL,
  `allow_change_approver` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `allow_change_next_approver` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `bookkeeper_id` int(11) DEFAULT NULL,
  `bookkeeper_cc` varchar(100) DEFAULT NULL,
  `list_len` tinyint(4) NOT NULL DEFAULT '25',
  `template_id` int(11) NOT NULL DEFAULT '25',
  `timesheet_template_id` int(11) NOT NULL DEFAULT '51',
  `default_integration` enum('Approver','Approver2','Bookkeeper','Qboe','Qbd','Netsuite','Intacct','Openair','Freshbooks','CSV','Payroll','PayrollCsv','ArchiveAsPersonal') DEFAULT NULL,
  `default_integration_id` int(11) DEFAULT NULL,
  `ia_type` enum('QBD','QBO') DEFAULT NULL,
  `iphone_date` date DEFAULT NULL,
  `enable_yodlee` tinyint(1) NOT NULL DEFAULT '0',
  `yodlee_id` varchar(255) NOT NULL,
  `yodlee_password` varchar(255) NOT NULL,
  `enable_ids` tinyint(1) DEFAULT '1',
  `ids_id` varchar(255) DEFAULT NULL,
  `ids_token` varchar(255) DEFAULT NULL,
  `ids_token_secret` varchar(255) DEFAULT NULL,
  `closed_info_boxes` varchar(255) NOT NULL DEFAULT '[]',
  `send_email_new_report` enum('Yes','No') NOT NULL DEFAULT 'No',
  `send_alerts_another_email` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `csv_date_format` enum('mm/dd/yy','mm/dd/yyyy','dd/mm/yy','dd/mm/yyyy','yy-mm-dd','yyyy-mm-dd') NOT NULL DEFAULT 'mm/dd/yyyy',
  `export_csv` enum('Yes','No') NOT NULL DEFAULT 'No',
  `export_payroll_csv` enum('Yes','No') NOT NULL DEFAULT 'No',
  `activation_code` varchar(100) DEFAULT NULL,
  `activation_expire_date` date DEFAULT NULL,
  `register_redirect_url` varchar(255) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `category_migrated` enum('Yes','No') NOT NULL DEFAULT 'No',
  `one_click_approval` enum('Yes','No') NOT NULL DEFAULT 'No',
  `conversion_popup` enum('Upsell','Paying','Thanks','Survey') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `company_id` (`company_id`),
  KEY `category_migrated` (`category_migrated`),
  KEY `company_id_2` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=latin1;


CREATE TABLE `yodlee_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yodlee_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `yodlee_errors` (
  `id` varchar(5) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `eb_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `yodlees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ECDEV-4293: Add Payroll support
CREATE TABLE `payroll_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




INSERT INTO `companies` VALUES (1,NULL,1,84,'USD','ExpenseCloud',1,25,0.555,0.555,0.555,1,NULL,NULL,'','Yes','Yes','Yes','No','No','Yes','Yes','No',NULL,NULL,'N','No'),
								(2,1,2,3,'USD','Acme-Hackme Corp.',2,31,25,0.555,0.555,0,'Acme-Hackme Corp.',13,'','No','No','No','No','No','No','No','No','2012-01-06 00:09:36','2012-12-19 02:37:14','No','No'),
								(3,1,4,5,'USD','test company',3,25,0.55,0.555,0.555,1,NULL,NULL,'','No','No','No','No','No','No','Yes','No','2012-01-16 20:22:14','2012-01-16 20:22:14','No','No'),
								(4,1,6,11,'USD','CO_U_3',9,25,0.55,0.555,0.555,1,'111111111111111111111111111',1,'company_logo/4_user3mailinator.com_logo_225588_10151351591611284_1881250847_n.jpg','No','No','No','No','No','No','No','Yes','2012-01-31 19:11:15','2013-03-05 22:47:38','No','No'),
								(5,1,12,13,'USD','Dat LHV',5,25,0.55,0.555,0.555,1,NULL,NULL,'','No','No','No','No','No','No','Yes','No','2012-02-01 23:06:35','2012-02-01 23:06:35','No','No'),
								(6,1,14,15,'USD','App7',8,25,0.55,0.555,0.555,1,NULL,NULL,'','No','No','No','No','No','No','Yes','No','2012-02-02 11:11:06','2012-02-02 11:11:06','No','No'),
								(7,1,16,17,'USD','Hung company',13,25,0.55,0.555,0.555,1,NULL,NULL,'','No','No','No','No','No','No','Yes','No','2012-02-05 23:22:19','2012-02-05 23:22:19','No','No'),
								(8,1,18,19,'AUD','YOUBRINY_CO',18,25,0.5,0.555,0.555,1,NULL,NULL,'','No','Yes','No','No','No','No','Yes','No','2012-02-27 20:02:40','2012-02-27 20:41:05','No','No'),
								(9,1,20,21,'AUD','ABC',21,25,0.5,0.555,0.555,1,NULL,NULL,'','No','No','Yes','No','No','No','Yes','No','2012-02-27 22:13:58','2012-02-28 19:36:06','No','No'),
								(10,1,22,23,'USD','New name',29,25,0.55,0.555,0.555,1,NULL,NULL,'','No','No','No','No','No','No','Yes','No','2012-02-29 01:00:09','2012-02-29 01:00:09','No','No');
INSERT INTO `users` VALUES (1,'root@expensecloud.com',NULL,NULL,
'8452aaf685e5162d96fd06bc8bd239de2c9277e436672c704a809070a110ff5d','8452aaf685e5162d96fd06bc8bd239de2c9277e436672c704a809070a110ff5d',
1,NULL,NULL,NULL,NULL,1,2,
'User','','',NULL,NULL,0.55,0.555,0.555,1,'miles','USD',0,'Company',NULL,'Company','Company',
'Company','Active','2012-02-10 03:04:44',NULL,NULL,'Yes','Yes','ExpenseCloud',NULL,NULL,'ExpenseCloud',NULL,NULL,
'113.161.72.254','Yes',NULL,NULL,'Service',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes',
NULL,NULL,25,25,51,NULL,NULL,NULL,NULL,0,'','',1,NULL,NULL,NULL,'[\"15\"]','No','Yes','mm/dd/yyyy',
'No','No',NULL,NULL,NULL,'2012-02-09 19:04:50','No','No','Upsell'),(237,'jack@app7.com',NULL,NULL,
'e048f9e23418de119611b9f5eb54593c99a429d5c1882215ec68144f5209457e','e048f9e23418de119611b9f5eb54593c99a429d5c1882215ec68144f5209457e',
1,NULL,NULL,NULL,NULL,1,1,
'User','','',NULL,NULL,0.555,0.555,0.555,1,'miles','USD',0,'Custom',NULL,'Custom','Custom','Custom',
'Active','2013-03-20 01:27:19',NULL,NULL,'Yes','Yes','ExpenseCloud',NULL,'2013-03-19 18:27:00','ExpenseCloud',NULL,
NULL,'72.87.141.67','Yes',NULL,NULL,'Service',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes',
NULL,NULL,25,25,51,NULL,NULL,NULL,NULL,0,'expbay_237_ebalpha','0u1v0e140y6',1,'expbay_237_ebalpha',
NULL,NULL,'[]','No','Yes','mm/dd/yyyy','No','No',NULL,NULL,NULL,'2013-03-19 18:27:19','No','No',
NULL);


-- add new currencies
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('AFN', 'Afghanistan Afghanis', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('ALL', 'Albania Leke', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('AMD', 'Armenia Drams', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('AOA', 'Angola Kwanza', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('AWG', 'Aruba Guilders', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('AZN', 'Azerbaijan New Manats', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BAM', 'Bosnian Marka', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BBD', 'Barbados Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BDT', 'Bangladesh Taka', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BIF', 'Burundi Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BMD', 'Bermuda Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BSD', 'Bahamas Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BTN', 'Bhutan Ngultrum', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BYR', 'Belarus Rubles', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('BZD', 'Belize Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('CDF', 'Congolese Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('CRC', 'Costa Rica Colones', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('CUP', 'Cuba Pesos', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('CVE', 'Cape Verde Escudos', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('DJF', 'Djibouti Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('DOP', 'Dominican Republic Pesos', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('DZD', 'Algeria Algeria Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('ERN', 'Eritrea Nakfa', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('ETB', 'Ethiopia Birr', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('FKP', 'Falkland Islands Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GEL', 'Georgia Lari', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GGP', 'Guernsey Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GHS', 'Ghana Cedis', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GIP', 'Gibraltar Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GMD', 'Gambia Dalasi', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GNF', 'Guinea Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GTQ', 'Guatemala Quetzales', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('GYD', 'Guyana Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('HTG', 'Haiti Gourdes', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('IMP', 'Isle of Man Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('IQD', 'Iraq Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('IRR', 'Iran Rials', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('JEP', 'Jersey Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('JMD', 'Jamaica Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('JOD', 'Jordan Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KES', 'Kenya Shillings', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KGS', 'Kyrgyzstan Soms', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KHR', 'Cambodia Riels', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KMF', 'Comoros Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KPW', 'Korea (North) Won', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('KYD', 'Cayman Islands Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LAK', 'Laos Kips', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LBP', 'Lebanon Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LRD', 'Liberia Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LSL', 'Lesotho Maloti', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LVL', 'Latvia Lati', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('LYD', 'Libya Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MDL', 'Moldova Lei', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MGA', 'Madagascar Ariary', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MKD', 'Macedonia Denars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MMK', 'Myanmar (Burma) Kyats', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MNT', 'Mongolia Tugriks', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MOP', 'Macau Patacas', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MRO', 'Mauritania Ouguiyas', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MVR', 'Maldives Rufiyaa', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MWK', 'Malawi Kwachas', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('MZN', 'Mozambique Meticais', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('NAD', 'Namibia Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('NGN', 'Nigeria Nairas', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('NIO', 'Nicaragua Cordobas', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('NTD', 'New Taiwan Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('PAB', 'Panama Balboa', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('PGK', 'Papua New Guinea Kina', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('PYG', 'Paraguay Guarani', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('RSD', 'Serbia Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('RWF', 'Rwanda Rwanda Francs', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SBD', 'Solomon Islands Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SCR', 'Seychelles Rupees', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SDG', 'Sudan Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SHP', 'Saint Helena Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SLL', 'Sierra Leone Leones', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SOS', 'Somalia Shillings', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SPL', 'Seborga Luigini', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SRD', 'Suriname Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('STD', 'São Tome and Principe Dobras', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SVC', 'El Salvador Colones', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SYP', 'Syria Pounds', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('SZL', 'Swaziland Emalangeni', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TJS', 'Tajikistan Somoni', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TMM', 'Turkmenistan Manats', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TND', 'Tunisia Dinars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TOP', "Tonga Pa'anga", 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TVD', 'Tuvalu Tuvalu Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('TZS', 'Tanzania Shillings', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('UGX', 'Uganda Shillings', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('UYU', 'Uruguay Pesos', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('UZS', 'Uzbekistan Sums', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('VEF', 'Venezuela Bolivares Fuertes', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('VND', 'Viet Nam Dong', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('VUV', 'Vanuatu Vatu', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('WST', 'Samoa Tala', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('XCD', 'East Caribbean Dollars', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('YER', 'Yemen Rials', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('ZMK', 'Zambia Kwacha', 0);
INSERT INTO `currencies` (`code` ,`name` ,`rate`) VALUES ('ZWD', 'Zimbabwe Zimbabwe Dollars', 0);

INSERT INTO `templates` (`id` ,`name` ,`code` ,`plugin_name` ,`type` ,`active`) VALUES (NULL , 'Premium Employee Expense Report ', '0031', 'template31', 'Premium', 'Yes');

INSERT INTO `subscription_plans` (`id`, `name`, `base_licenses`, `base_cost_monthly`, `base_cost_yearly`, `rate_per_additional_user_monthly`, `rate_per_additional_user_yearly`) VALUES
(1, 'FOR INDIVIDUALS', 1, 10, 108, 10, 108),
(2, 'FOR SMALL COMPANIES', 10, 90, 972, 9, 90),
(3, 'FOR MID-SIZED COMPANIES', 25, 179, 1933.2, 7.16, 77.38),
(4, 'FOR GROWING COMPANIES', 50, 249, 2689.2, 4.98, 53.78),
(5, 'FOR LARGE COMPANIES', 100, 399, 4309.2, 3.99, 43.09);

INSERT INTO `system_users` (
    `id` , `email` , `password` , `firstname` , `lastname` , `active` , `last_login`
)
VALUES (
    '1', 'system@expensecloud.com', 'c3d54fccec35de945f55ab248c1821867e0b874604aab12d96daf711c09c3b52 ', '' , '' , 'Yes', NOW( )
);


INSERT INTO `countries` (`id`, `name`, `has_state`) VALUES
(1, 'United States', 1),
(2, 'Afghanistan', 0),
(3, 'Albania', 0),
(4, 'Algeria', 0),
(5, 'American Samoa', 0),
(6, 'Andorra', 0),
(7, 'Angola', 0),
(8, 'Anguilla', 0),
(9, 'Antarctica', 0),
(10, 'Antigua and Barbuda', 0),
(11, 'Argentina', 0),
(12, 'Armenia', 0),
(13, 'Aruba', 0),
(14, 'Ascension Island', 0),
(15, 'Australia', 1),
(16, 'Austria', 0),
(17, 'Azerbaijan', 0),
(18, 'Bahamas', 0),
(19, 'Bahrain', 0),
(20, 'Bangladesh', 0),
(21, 'Barbados', 0),
(22, 'Belarus', 0),
(23, 'Belgium', 1),
(24, 'Belize', 0),
(25, 'Benin', 0),
(26, 'Bermuda', 0),
(27, 'Bhutan', 0),
(28, 'Bolivia', 0),
(29, 'Bosnia and Herzegovina', 0),
(30, 'Botswana', 0),
(31, 'Bouvet Island', 0),
(32, 'Brazil', 1),
(33, 'British Indian Ocean Territory', 0),
(34, 'Brunei Darussalam', 0),
(35, 'Bulgaria', 0),
(36, 'Burkina Faso', 0),
(37, 'Burundi', 0),
(38, 'Cambodia', 0),
(39, 'Cameroon', 0),
(40, 'Canada', 1),
(41, 'Cape Verde Islands', 0),
(42, 'Cayman Islands', 0),
(43, 'Central African Republic', 0),
(44, 'Chad', 0),
(45, 'Chile', 0),
(46, 'China', 0),
(47, 'Christmas Island', 0),
(48, 'Cocos (Keeling) Islands', 0),
(49, 'Colombia', 0),
(50, 'Comoros', 0),
(51, 'Congo, Democratic Republic of', 0),
(52, 'Congo, Republic of', 0),
(53, 'Cook Islands', 0),
(54, 'Costa Rica', 0),
(55, 'Cote d''Ivoire', 0),
(56, 'Croatia/Hrvatska', 0),
(57, 'Cyprus', 0),
(58, 'Czech Republic', 0),
(59, 'Denmark', 0),
(60, 'Djibouti', 0),
(61, 'Dominica', 0),
(62, 'Dominican Republic', 0),
(63, 'East Timor', 0),
(64, 'Ecuador', 0),
(65, 'Egypt', 0),
(66, 'El Salvador', 0),
(67, 'Equatorial Guinea', 0),
(68, 'Eritrea', 0),
(69, 'Estonia', 0),
(70, 'Ethiopia', 0),
(71, 'Falkland Islands', 0),
(72, 'Faroe Islands', 0),
(73, 'Fiji', 0),
(74, 'Finland', 0),
(75, 'France', 0),
(76, 'French Guiana', 0),
(77, 'French Polynesia', 0),
(78, 'French Southern Territories', 0),
(79, 'Gabon', 0),
(80, 'Gambia', 0),
(81, 'Georgia', 0),
(82, 'Germany', 0),
(83, 'Ghana', 0),
(84, 'Gibraltar', 0),
(85, 'Greece', 0),
(86, 'Greenland', 0),
(87, 'Grenada', 0),
(88, 'Guadeloupe', 0),
(89, 'Guam', 0),
(90, 'Guatemala', 0),
(91, 'Guernsey', 0),
(92, 'Guinea', 0),
(93, 'Guinea-Bissau', 0),
(94, 'Guyana', 0),
(95, 'Haiti', 0),
(96, 'Heard and McDonald Islands', 0),
(97, 'Honduras', 0),
(98, 'Hong Kong', 0),
(99, 'Hungary', 0),
(100, 'Iceland', 0),
(101, 'India', 1),
(102, 'Indonesia', 0),
(103, 'Iraq', 0),
(104, 'Ireland', 0),
(105, 'Isle of Man', 0),
(106, 'Israel', 0),
(107, 'Italy', 1),
(108, 'Jamaica', 0),
(109, 'Japan', 1),
(110, 'Jersey', 0),
(111, 'Jordan', 0),
(112, 'Kazakhstan', 0),
(113, 'Kenya', 0),
(114, 'Kiribati', 0),
(115, 'Korea, Republic of (South Korea)', 0),
(116, 'Kosovo', 0),
(117, 'Kuwait', 0),
(118, 'Kyrgyzstan', 0),
(119, 'Laos', 0),
(120, 'Latvia', 0),
(121, 'Lebanon', 0),
(122, 'Lesotho', 0),
(123, 'Liberia', 0),
(124, 'Libya', 0),
(125, 'Liechtenstein', 0),
(126, 'Lithuania', 0),
(127, 'Luxembourg', 0),
(128, 'Macau', 0),
(129, 'Macedonia', 0),
(130, 'Madagascar', 0),
(131, 'Malawi', 0),
(132, 'Malaysia', 0),
(133, 'Maldives', 0),
(134, 'Mali', 0),
(135, 'Malta', 0),
(136, 'Marshall Islands', 0),
(137, 'Martinique', 0),
(138, 'Mauritania', 0),
(139, 'Mauritius', 0),
(140, 'Mayotte Island', 0),
(141, 'Mexico', 1),
(142, 'Micronesia', 0),
(143, 'Moldova', 0),
(144, 'Monaco', 0),
(145, 'Mongolia', 0),
(146, 'Montenegro', 0),
(147, 'Montserrat', 0),
(148, 'Morocco', 0),
(149, 'Mozambique', 0),
(150, 'Myanmar', 0),
(151, 'Namibia', 0),
(152, 'Nauru', 0),
(153, 'Nepal', 0),
(154, 'Netherlands', 0),
(155, 'Netherlands Antilles', 0),
(156, 'New Caledonia', 0),
(157, 'New Zealand', 0),
(158, 'Nicaragua', 0),
(159, 'Niger', 0),
(160, 'Nigeria', 0),
(161, 'Niue', 0),
(162, 'Norfolk Island', 0),
(163, 'Northern Mariana Islands', 0),
(164, 'Norway', 0),
(165, 'Oman', 0),
(166, 'Pakistan', 0),
(167, 'Palau', 0),
(168, 'Palestinian Territories', 0),
(169, 'Panama', 0),
(170, 'Papua New Guinea', 0),
(171, 'Paraguay', 0),
(172, 'Peru', 0),
(173, 'Philippines', 0),
(174, 'Pitcairn Island', 0),
(175, 'Poland', 0),
(176, 'Portugal', 0),
(177, 'Puerto Rico', 0),
(178, 'Qatar', 0),
(179, 'Reunion Island', 0),
(180, 'Romania', 0),
(181, 'Russian Federation', 0),
(182, 'Rwanda', 0),
(183, 'Saint Helena', 0),
(184, 'Saint Kitts and Nevis', 0),
(185, 'Saint Lucia', 0),
(186, 'Saint Pierre and Miquelon', 0),
(187, 'Saint Vincent and the Grenadines', 0),
(188, 'San Marino', 0),
(189, 'Sao Tome and Principe', 0),
(190, 'Saudi Arabia', 0),
(191, 'Senegal', 0),
(192, 'Serbia', 0),
(193, 'Seychelles', 0),
(194, 'Sierra Leone', 0),
(195, 'Singapore', 0),
(196, 'Slovak Republic', 0),
(197, 'Slovenia', 0),
(198, 'Solomon Islands', 0),
(199, 'Somalia', 0),
(200, 'South Africa', 0),
(201, 'South Georgia and South Sandwich Islands', 0),
(202, 'Spain', 1),
(203, 'Sri Lanka', 0),
(204, 'Suriname', 0),
(205, 'Svalbard and Jan Mayen Islands', 0),
(206, 'Swaziland', 0),
(207, 'Sweden', 0),
(208, 'Switzerland', 0),
(209, 'Taiwan', 0),
(210, 'Tajikistan', 0),
(211, 'Tanzania', 0),
(212, 'Thailand', 0),
(213, 'Timor-Leste', 0),
(214, 'Togo', 0),
(215, 'Tokelau', 0),
(216, 'Tonga Islands', 0),
(217, 'Trinidad and Tobago', 0),
(218, 'Tunisia', 0),
(219, 'Turkey', 0),
(220, 'Turkmenistan', 0),
(221, 'Turks and Caicos Islands', 0),
(222, 'Tuvalu', 0),
(223, 'Uganda', 0),
(224, 'Ukraine', 0),
(225, 'United Arab Emirates', 0),
(226, 'United Kingdom', 0),
(227, 'Uruguay', 0),
(228, 'US Minor Outlying Islands', 0),
(229, 'Uzbekistan', 0),
(230, 'Vanuatu', 0),
(231, 'Vatican City', 0),
(232, 'Venezuela', 0),
(233, 'Vietnam', 0),
(234, 'Virgin Islands (British)', 0),
(235, 'Virgin Islands (USA)', 0),
(236, 'Wallis and Futuna Islands', 0),
(237, 'Western Sahara', 0),
(238, 'Western Samoa', 0),
(239, 'Yemen', 0),
(240, 'Zambia', 0),
(241, 'Zimbabwe', 0);

INSERT INTO `template_columns` (`id`, `name`, `template_id`) VALUES
    (284, 'Mileage', 25),
    (285, 'Ground Travel', 25),
    (286, 'Air Travel', 25),
    (287, 'Parking', 25),
    (288, 'Hotels', 25),
    (289, 'Meals', 25),
    (290, 'Entertainment', 25),
    (291, 'Telco', 25),
    (292, 'Misc', 25);

INSERT INTO `template_columns` (`id`, `name`, `template_id`) VALUES
    (293, 'Mileage', 29),
    (294, 'Ground Travel', 29),
    (295, 'Air Travel', 29),
    (296, 'Parking', 29),
    (297, 'Hotels', 29),
    (298, 'Meals', 29),
    (299, 'Entertainment', 29),
    (300, 'Telco', 29),
    (301, 'Misc', 29);

INSERT INTO `template_columns` (`id`, `name`, `template_id`) VALUES
    (302, 'Mileage', 30),
    (303, 'Ground Travel', 30),
    (304, 'Air Travel', 30),
    (305, 'Parking', 30),
    (306, 'Hotels', 30),
    (307, 'Meals', 30),
    (308, 'Entertainment', 30),
    (309, 'Telco', 30),
    (310, 'Misc', 30);

INSERT INTO `template_columns` (`id`, `name`, `template_id`) VALUES
    (311, 'Mileage', 31),
    (312, 'Ground Travel', 31),
    (313, 'Air Travel', 31),
    (314, 'Parking', 31),
    (315, 'Hotels', 31),
    (316, 'Meals', 31),
    (317, 'Entertainment', 31),
    (318, 'Telco', 31),
    (319, 'Misc', 31);

INSERT INTO `currencies` (`code`, `name`, `rate`) VALUES
('AED', 'United Arab Emirates Dirham', 0.2722),
('ANG', 'Netherlands Antillean Gulden', 0.5582),
('ARS', 'Argentine Peso', 0.2517),
('AUD', 'Australian Dollar', 1.0029),
('BGN', 'Bulgarian Lev', 0.6715),
('BHD', 'Bahraini Dinar', 2.6523),
('BND', 'Brunei Dollar', 0.7605),
('BOB', 'Bolivian Boliviano', 0.1431),
('BRL', 'Brazilian Real', 0.5912),
('BWP', 'Botswana Pula', 0.153),
('CAD', 'Canadian Dollar', 0.9916),
('CHF', 'Swiss Franc', 1.0393),
('CLP', 'Chilean Peso', 0.0021),
('CNY', 'Chinese Yuan (renminbi)', 0.1508),
('COP', 'Colombian Peso', 0.0005),
('CSD', 'Serbian Dinar', 0),
('CZK', 'Czech Koruna', 0.0518),
('DKK', 'Danish Krone', 0.1765),
('EEK', 'Estonian Kroon', 0.0841),
('EGP', 'Egyptian Pound', 0.1722),
('EUR', 'Euro', 1.3153),
('FJD', 'Fijian Dollar', 0.5426),
('GBP', 'British Pound', 1.5392),
('HKD', 'Hong Kong Dollar', 0.1285),
('HNL', 'Honduran Lempira', 0.0529),
('HRK', 'Croatian Kuna', 0.178),
('HUF', 'Hungarian Forint', 0.0047),
('IDR', 'Indonesian Rupiah', 0.0001),
('ILS', 'New Israeli Sheqel', 0.2785),
('INR', 'Indian Rupee', 0.0221),
('ISK', 'Icelandic Króna', 0.0086),
('JPY', 'Japanese Yen', 0.0121),
('KRW', 'South Korean Won', 0.0009),
('KWD', 'Kuwaiti Dinar', 3.5398),
('KZT', 'Kazakhstani Tenge', 0.0068),
('LKR', 'Sri Lankan Rupee', 0.009),
('LTL', 'Lithuanian Litas', 0.381),
('MAD', 'Moroccan Dirham', 0.1183),
('MUR', 'Mauritian Rupee', 0.0327),
('MXN', 'Mexican Peso', 0.081),
('MYR', 'Malaysian Ringgit', 0.3237),
('NOK', 'Norwegian Krone', 0.1677),
('NPR', 'Nepalese Rupee', 0.0138),
('NZD', 'New Zealand Dollar', 0.7482),
('OMR', 'Omani Rial', 2.5967),
('PEN', 'Peruvian Nuevo Sol', 0.3567),
('PHP', 'Philippine Peso', 0.0228),
('PKR', 'Pakistani Rupee', 0.0117),
('PLN', 'Polish Zloty', 0.3311),
('QAR', 'Qatari Riyal', 0.2747),
('RON', 'New Romanian Leu', 0.3069),
('RUB', 'Russian Ruble', 0.033),
('SAR', 'Saudi Riyal', 0.2667),
('SEK', 'Swedish Krona', 0.1462),
('SGD', 'Singapore Dollar', 0.7685),
('SKK', 'Slovak Koruna', 0.0464),
('THB', 'Thai Baht', 0.0331),
('TRY', 'New Turkish Lira', 0.6464),
('TTD', 'Trinidad and Tobago Dollar', 0.157),
('TWD', 'New Taiwan Dollar', 0.0339),
('UAH', 'Ukrainian Hryvnia', 0.1255),
('USD', 'United States Dollar', 1),
('VEB', 'Venezuelan Bolívar', 0),
('ZAR', 'South African Rand', 0.1484);

INSERT INTO `domains` (`id`, `name`) VALUES
(1, 'expensecloud.com'),
(2, 'gmail.com' ),
(3, 'hotmail.com' ),
(4, 'live.com' ),
(5, 'mail.com' ),
(6, 'yahoo.com' ),
(7, 'msn.com' ),
(8, 'verizon.net' ),
(9, 'google.com' ),
(10, 'ymail.com' ),
(11, 'mailinator.com' ),
(12, 'aol.com' );

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Alaska', 3),
(2, 'Alabama', 1),
(3, 'Arkansas', 1),
(4, 'Arizona', 1),
(5, 'California', 1),
(6, 'Colorado', 1),
(7, 'Connecticut', 1),
(8, 'District of Columbia', 1),
(9, 'Delaware', 1),
(10, 'Florida', 1),
(11, 'Georgia', 1),
(12, 'Hawaii', 1),
(13, 'Iowa', 1),
(14, 'Idaho', 1),
(15, 'Illinois', 1),
(16, 'Indiana', 1),
(17, 'Kansas', 1),
(18, 'Kentucky', 1),
(19, 'Louisiana', 1),
(20, 'Massachusetts', 1),
(21, 'Maryland', 1),
(22, 'Maine', 1),
(23, 'Michigan', 1),
(24, 'Minnesota', 1),
(25, 'Missouri', 1),
(26, 'Mississippi', 1),
(27, 'Montana', 1),
(28, 'North Carolina', 1),
(29, 'North Dakota', 1),
(30, 'Nebraska', 1),
(31, 'New Hampshire', 1),
(32, 'New Jersey', 1),
(33, 'New Mexico', 1),
(34, 'Nevada', 1),
(35, 'New York', 1),
(36, 'Ohio', 1),
(37, 'Oklahoma', 1),
(38, 'Oregon', 1),
(39, 'Pennsylvania', 1),
(40, 'Rhode Island', 1),
(41, 'South Carolina', 1),
(42, 'South Dakota', 1),
(43, 'Tennessee', 1),
(44, 'Texas', 1),
(45, 'Utah', 1),
(46, 'Virginia', 1),
(47, 'Vermont', 1),
(48, 'Washington', 1),
(49, 'Wisconsin', 1),
(50, 'West Virginia', 1),
(51, 'Wyoming', 1),
(52, 'Australian Capital Territory', 15),
(53, 'New South Wales', 15),
(54, 'Northern Territory', 15),
(55, 'Queensland', 15),
(56, 'South Australia', 15),
(57, 'Tasmania', 15),
(58, 'Victoria', 15),
(59, 'Western Australia', 15),
(60, 'Antwerpen', 23),
(61, 'Brabant Wallon', 23),
(62, 'Brussels', 23),
(63, 'Hainaut', 23),
(64, 'Liege', 23),
(65, 'Limburg', 23),
(66, 'Luxembourg', 23),
(67, 'Namur', 23),
(68, 'Oost-Vlaanderen', 23),
(69, 'Vlaams Brabant', 23),
(70, 'West-Vlaanderen', 23),
(71, 'Acre', 32),
(72, 'Alagoas', 32),
(73, 'Amapa', 32),
(74, 'Amazonas', 32),
(75, 'Bahia', 32),
(76, 'Ceara', 32),
(77, 'Distrito Federal', 32),
(78, 'Espirito Santo', 32),
(79, 'Goias', 32),
(80, 'Maranhao', 32),
(81, 'Mato Grosso', 32),
(82, 'Mato Grosso do Sul', 32),
(83, 'Minas Gerais', 32),
(84, 'Para', 32),
(85, 'Paraiba', 32),
(86, 'Parana', 32),
(87, 'Pernambuco', 32),
(88, 'Piaui', 32),
(89, 'Rio de Janeiro', 32),
(90, 'Rio Grande do Norte', 32),
(91, 'Rio Grande do Sul', 32),
(92, 'Rondonia', 32),
(93, 'Roraima', 32),
(94, 'Santa Catarina', 32),
(95, 'Sao Paulo', 32),
(96, 'Sergipe', 32),
(97, 'Tocantins', 32),
(98, 'Alberta', 40),
(99, 'British Columbia', 40),
(100, 'Manitoba', 40),
(101, 'New Brunswick', 40),
(102, 'Newfoundland', 40),
(103, 'Northwest Territories', 40),
(104, 'Nova Scotia', 40),
(105, 'Nunavut', 40),
(106, 'Ontario', 40),
(107, 'Prince Edward Island', 40),
(108, 'Quebec', 40),
(109, 'Saskatchewan', 40),
(110, 'Yukon Territory', 40),
(111, 'Andaman and Nicobar Islands', 101),
(112, 'Andhra Pradesh', 101),
(113, 'Arunachal Pradesh', 101),
(114, 'Assam', 101),
(115, 'Bihar', 101),
(116, 'Chandigarh', 101),
(117, 'Chhattisgarh', 101),
(118, 'Dadra and Nagar Haveli', 101),
(119, 'Daman and Diu', 101),
(120, 'Delhi', 101),
(121, 'Goa', 101),
(122, 'Gujarat', 101),
(123, 'Haryana', 101),
(124, 'Himachal Pradesh', 101),
(125, 'Jammu and Kashmir', 101),
(126, 'Jharkhand', 101),
(127, 'Karnataka', 101),
(128, 'Kerala', 101),
(129, 'Lakshadweep', 101),
(130, 'Madhya Pradesh', 101),
(131, 'Maharashtra', 101),
(132, 'Manipur', 101),
(133, 'Meghalaya', 101),
(134, 'Mizoram', 101),
(135, 'Nagaland', 101),
(136, 'Orissa', 101),
(137, 'Puducherry', 101),
(138, 'Punjab', 101),
(139, 'Rajasthan', 101),
(140, 'Sikkim', 101),
(141, 'Tamil Nadu', 101),
(142, 'Tripura', 101),
(143, 'Uttar Pradesh', 101),
(144, 'Uttarakhand', 101),
(145, 'West Bengal', 101),
(146, 'Agrigento', 107),
(147, 'Alessandria', 107),
(148, 'Ancona', 107),
(149, 'Aosta', 107),
(150, 'Arezzo', 107),
(151, 'Ascoli Piceno', 107),
(152, 'Asti', 107),
(153, 'Avellino', 107),
(154, 'Bari', 107),
(155, 'Belluno', 107),
(156, 'Benevento', 107),
(157, 'Bergamo', 107),
(158, 'Biella', 107),
(159, 'Bologna', 107),
(160, 'Bolzano-Bozen', 107),
(161, 'Brescia', 107),
(162, 'Brindisi', 107),
(163, 'Cagliari', 107),
(164, 'Caltanissetta', 107),
(165, 'Campobasso', 107),
(166, 'Carbonia-Iglesias', 107),
(167, 'Caserta', 107),
(168, 'Catania', 107),
(169, 'Catanzaro', 107),
(170, 'Chieti', 107),
(171, 'Como', 107),
(172, 'Cosenza', 107),
(173, 'Cremona', 107),
(174, 'Crotone', 107),
(175, 'Cuneo', 107),
(176, 'Enna', 107),
(177, 'Ferrara', 107),
(178, 'Florence', 107),
(179, 'Foggia', 107),
(180, 'Forli-Cesena', 107),
(181, 'Frosinone', 107),
(182, 'Genoa', 107),
(183, 'Gorizia', 107),
(184, 'Grosseto', 107),
(185, 'Imperia', 107),
(186, 'Isernia', 107),
(187, 'La Spezia', 107),
(188, 'L''Aquila', 107),
(189, 'Latina', 107),
(190, 'Lecce', 107),
(191, 'Lecco', 107),
(192, 'Livorno', 107),
(193, 'Lodi', 107),
(194, 'Lucca', 107),
(195, 'Macerata', 107),
(196, 'Mantua', 107),
(197, 'Massa-Carrara', 107),
(198, 'Matera', 107),
(199, 'Medio Campidano', 107),
(200, 'Messina', 107),
(201, 'Milan', 107),
(202, 'Modena', 107),
(203, 'Naples', 107),
(204, 'Novara', 107),
(205, 'Nuoro', 107),
(206, 'Ogliastra', 107),
(207, 'Olbia-Tempio', 107),
(208, 'Oristano', 107),
(209, 'Padua', 107),
(210, 'Palermo', 107),
(211, 'Parma', 107),
(212, 'Pavia', 107),
(213, 'Perugia', 107),
(214, 'Pesaro e Urbino', 107),
(215, 'Pescara', 107),
(216, 'Piacenza', 107),
(217, 'Pisa', 107),
(218, 'Pistoia', 107),
(219, 'Pordenone', 107),
(220, 'Potenza', 107),
(221, 'Prato', 107),
(222, 'Ragusa', 107),
(223, 'Ravenna', 107),
(224, 'Reggio Calabria', 107),
(225, 'Reggio Emilia', 107),
(226, 'Republic of San Marino', 107),
(227, 'Rieti', 107),
(228, 'Rimini', 107),
(229, 'Rome', 107),
(230, 'Rovigo', 107),
(231, 'Salerno', 107),
(232, 'Sassari', 107),
(233, 'Savona', 107),
(234, 'Siena', 107),
(235, 'Sondrio', 107),
(236, 'Syracuse', 107),
(237, 'Taranto', 107),
(238, 'Teramo', 107),
(239, 'Terni', 107),
(240, 'Trapani', 107),
(241, 'Trento', 107),
(242, 'Treviso', 107),
(243, 'Trieste', 107),
(244, 'Turin', 107),
(245, 'Udine', 107),
(246, 'Varese', 107),
(247, 'Venice', 107),
(248, 'Verbano-Cusio-Ossola', 107),
(249, 'Vercelli', 107),
(250, 'Verona', 107),
(251, 'Vibo Valentia', 107),
(252, 'Vicenza', 107),
(253, 'Viterbo', 107),
(254, 'Aguascalientes', 141),
(255, 'Baja California', 141),
(256, 'Baja California Sur', 141),
(257, 'Campeche', 141),
(258, 'Chiapas', 141),
(259, 'Chihuahua', 141),
(260, 'Coahuila', 141),
(261, 'Colima', 141),
(262, 'Distrito Federal', 141),
(263, 'Durango', 141),
(264, 'Guanajuato', 141),
(265, 'Guerrero', 141),
(266, 'Hidalgo', 141),
(267, 'Jalisco', 141),
(268, 'Mexico', 141),
(269, 'Michoacan', 141),
(270, 'Morelos', 141),
(271, 'Nayarit', 141),
(272, 'Nuevo Leon', 141),
(273, 'Oaxaca', 141),
(274, 'Puebla', 141),
(275, 'Queretaro', 141),
(276, 'Quintana Roo', 141),
(277, 'San Luis Potosi', 141),
(278, 'Sinaloa', 141),
(279, 'Sonora', 141),
(280, 'Tabasco', 141),
(281, 'Tamaulipas', 141),
(282, 'Tlaxcala', 141),
(283, 'Veracruz', 141),
(284, 'Yucatan', 141),
(285, 'Zacatecas', 141),
(286, 'Aichi', 109),
(287, 'Akita', 109),
(288, 'Aomori', 109),
(289, 'Chiba', 109),
(290, 'Ehime', 109),
(291, 'Fukui', 109),
(292, 'Fukuoka', 109),
(293, 'Fukushima', 109),
(294, 'Gifu', 109),
(295, 'Gumma', 109),
(296, 'Hiroshima', 109),
(297, 'Hokkaido', 109),
(298, 'Hyogo', 109),
(299, 'Ibaraki', 109),
(300, 'Ishikawa', 109),
(301, 'Iwate', 109),
(302, 'Kagawa', 109),
(303, 'Kagoshima', 109),
(304, 'Kanagawa', 109),
(305, 'Kouchi', 109),
(306, 'Kumamoto', 109),
(307, 'Kyoto', 109),
(308, 'Mie', 109),
(309, 'Miyagi', 109),
(310, 'Miyazaki', 109),
(311, 'Nagano', 109),
(312, 'Nagasaki', 109),
(313, 'Nara', 109),
(314, 'Niigata', 109),
(315, 'Oita', 109),
(316, 'Okayama', 109),
(317, 'Okinawa', 109),
(318, 'Osaka', 109),
(319, 'Saga', 109),
(320, 'Saitama', 109),
(321, 'Shiga', 109),
(322, 'Shimane', 109),
(323, 'Shizuoka', 109),
(324, 'Tochigi', 109),
(325, 'Tokushima', 109),
(326, 'Tokyo', 109),
(327, 'Tottori', 109),
(328, 'Toyama', 109),
(329, 'Wakayama', 109),
(330, 'Yamagata', 109),
(331, 'Yamaguchi', 109),
(332, 'Yamanashi', 109),
(333, 'Aguascalientes', 141),
(334, 'Baja California', 141),
(335, 'Baja California Sur', 141),
(336, 'Campeche', 141),
(337, 'Chiapas', 141),
(338, 'Chihuahua', 141),
(339, 'Coahuila', 141),
(340, 'Colima', 141),
(341, 'Distrito Federal', 141),
(342, 'Durango', 141),
(343, 'Guanajuato', 141),
(344, 'Guerrero', 141),
(345, 'Hidalgo', 141),
(346, 'Jalisco', 141),
(347, 'Mexico', 141),
(348, 'Michoacan', 141),
(349, 'Morelos', 141),
(350, 'Nayarit', 141),
(351, 'Nuevo Leon', 141),
(352, 'Oaxaca', 141),
(353, 'Puebla', 141),
(354, 'Queretaro', 141),
(355, 'Quintana Roo', 141),
(356, 'San Luis Potosi', 141),
(357, 'Sinaloa', 141),
(358, 'Sonora', 141),
(359, 'Tabasco', 141),
(360, 'Tamaulipas', 141),
(361, 'Tlaxcala', 141),
(362, 'Veracruz', 141),
(363, 'Yucatan', 141),
(364, 'Zacatecas', 141),
(365, 'a Coruna', 202),
(366, 'Albacete', 202),
(367, 'Alicante', 202),
(368, 'Almeria', 202),
(369, 'Araba', 202),
(370, 'Asturias', 202),
(371, 'Avila', 202),
(372, 'Badajoz', 202),
(373, 'Barcelona', 202),
(374, 'Bizkaia', 202),
(375, 'Burgos', 202),
(376, 'Caceres', 202),
(377, 'Cadiz', 202),
(378, 'Cantabria', 202),
(379, 'Castellon', 202),
(380, 'Ceuta', 202),
(381, 'Ciudad Real', 202),
(382, 'Cordoba', 202),
(383, 'Cuenca', 202),
(384, 'Gipuzkoa', 202),
(385, 'Girona', 202),
(386, 'Granada', 202),
(387, 'Guadalajara', 202),
(388, 'Huelva', 202),
(389, 'Huesca', 202),
(390, 'Illes Balears', 202),
(391, 'Jaen', 202),
(392, 'la Rioja', 202),
(393, 'las Palmas', 202),
(394, 'Leon', 202),
(395, 'Lleida', 202),
(396, 'Lugo', 202),
(397, 'Madrid', 202),
(398, 'Malaga', 202),
(399, 'Melilla', 202),
(400, 'Murcia', 202),
(401, 'Navarra', 202),
(402, 'Ourense', 202),
(403, 'Palencia', 202),
(404, 'Pontevedra', 202),
(405, 'Salamanca', 202),
(406, 'Santa Cruz de Tenerife', 202),
(407, 'Segovia', 202),
(408, 'Sevilla', 202),
(409, 'Soria', 202),
(410, 'Tarragona', 202),
(411, 'Teruel', 202),
(412, 'Toledo', 202),
(413, 'Valencia', 202),
(414, 'Valladolid', 202),
(415, 'Zamora', 202),
(416, 'Zaragoza', 202),
(417, 'TPHCM', 233),
(418, 'Cuba', 13),
(419, 'HCM', 233),
(420, 'hcm', 17),
(421, 'wata', 64),
(422, 'test', 129),
(423, 'TG', 233);

INSERT INTO `categories` (`id`, `name`, `parent_id`, `type`, `status`, `user_id`, `owner_type`) VALUES
(1, 'Unknown', 25, 'Normal', 'Active', 1, 'System'),
(2, 'Air Travel', NULL, 'FromTo', 'Active', 1, 'System'),
(4, 'Meals', NULL, 'Normal', 'Active', 1, 'System'),
(5, 'Ground Travel', NULL, 'FromTo', 'Active', 1, 'System'),
(6, 'Hotels', NULL, 'Normal', 'Active', 1, 'System'),
(8, 'Parking', NULL, 'Normal', 'Active', 1, 'System'),
(11, 'Telco', NULL, 'Normal', 'Active', 1, 'System'),
(12, 'Utilities', NULL, 'Normal', 'Active', 1, 'System'),
(16, 'Mileage', 5, 'FromTo', 'Active', 1, 'System'),
(17, 'Taxi', 5, 'FromTo', 'Active', 1, 'System'),
(18, 'Train', 5, 'FromTo', 'Active', 1, 'System'),
(21, 'Business Meals', 4, 'Normal', 'Active', 1, 'System'),
(24, 'Entertainment', NULL, 'Normal', 'Active', 1, 'System'),
(25, 'Miscellaneous', NULL, 'Normal', 'Active', 1, 'System'),
(30, 'Agent Fee', 2, 'Normal', 'Active', 1, 'System'),
(32, 'Rental Car', 5, 'Normal', 'Active', 1, 'System'),
(33, 'Fuel', 5, 'Normal', 'Active', 1, 'System'),
(34, 'Mobile', 11, 'Normal', 'Active', 1, 'System'),
(36, 'Internet', 11, 'Normal', 'Active', 1, 'System'),
(41, 'Personal Meals', 4, 'Normal', 'Active', 1, 'System'),
(42, 'Shipping Postage', 25, 'Normal', 'Active', 1, 'System'),
(43, 'Gift', 25, 'Normal', 'Active', 1, 'System'),
(45, 'Office Supplies', 25, 'Normal', 'Active', 1, 'System'),
(51, 'Retail', 25, 'Normal', 'Active', 1, 'System'),
(52, 'Groceries', 25, 'Normal', 'Active', 1, 'System'),
(56, 'Professional Fees', 25, 'Normal', 'Active', 1, 'System'),
(63, 'Capital Expenditure', 25, 'Normal', 'Active', 1, 'System'),
(64, 'Medical', 25, 'Normal', 'Active', 1, 'System'),
(66, 'Time', NULL, 'Normal', 'Active', 1, 'System'),
(67, 'Advertising', 25, 'Normal', 'Active', 1, 'System');
