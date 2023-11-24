INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
    ('society_accountant', 'Revisor', 1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
    ('society_accountant', 'Revisor', 1)
;

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
    ('society_accountant', 'Revisor', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
    ('accountant', 'Revisor', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
    ('accountant', 0, 'trainee', 'Elev', 350, '{}', '{}'),
    ('accountant', 1, 'employee', 'Ansat', 500, '{}', '{}'),
    ('accountant', 2, 'boss', 'Chef', 1000, '{}', '{}')
;