CREATE TABLE IF NOT EXISTS  `user` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`user_id` VARCHAR (32) NULL,
`email_id` VARCHAR(128) NULL,
`password` VARCHAR(128) NOT NULL,
`mobile_number` VARCHAR(20) NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fiscal_year` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `financial_year` VARCHAR(32) NOT NULL ,
  `assessment_year` VARCHAR(32) NOT NULL ,
  `from` date NOT NULL,
  `till` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `company` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mf_schemes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `company_id` INT(11) NOT NULL,
  `is_tax_deductable` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`company_id`) REFERENCES `mf_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mf_investment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `fiscal_id` INT(11) NOT NULL,
  `scheme_id` INT(11) NOT NULL,
  `purchased_on` datetime NOT NULL,
  `invested_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `amount` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`fiscal_id`) REFERENCES `fiscal_year` (`id`),
  FOREIGN KEY (`scheme_id`) REFERENCES `mf_schemes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;