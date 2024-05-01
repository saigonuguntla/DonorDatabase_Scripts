
-- list Organizations total count 
SELECT COUNT(orggrants.org_id) 
FROM orggrants, orgs
WHERE Orgs.org_id = OrgGrants.org_id;
 
-- list orggrants orgIDs 
SELECT orggrants.org_id
FROM orggrants, orgs
WHERE Orgs.org_id = OrgGrants.org_id;
 
-- list both orggrants and orgs orgids
SELECT orggrants.org_id, orgs.org_id
FROM orggrants, orgs
WHERE Orgs.org_id = OrgGrants.org_id;

SELECT * FROM orgs;
SELECT * FROM orggrants WHERE title LIKE ? OR amount LIKE ?;
SELECT org_id, org_name FROM orgs;
SELECT org_name FROM orgs WHERE org_id = ?;
SELECT * FROM orggrants WHERE org_id = ?;
INSERT INTO orggrants VALUES (title = ?, amount = ?, designation = ?, org_id = ?, application_due_date = ?,date_applied = ?, grant_decision_date = ?, funds_received_date = ?, report_due_date = ?, report_submitted_date = ?, grant_cycle = ?,  comments = ?, status = ?);
UPDATE orggrants SET title = ?, amount = ?, designation = ?, org_id = ?, application_due_date = ?,date_applied = ?, grant_decision_date = ?, funds_received_date = ?, report_due_date = ?, report_submitted_date = ?, grant_cycle = ?,  comments = ?, status = ? WHERE org_id = ?;

-- counts the total number of grants given by a specific org if it's funded
SELECT COUNT(org_name)
FROM orgGrants 
WHERE org_id = ${req.params.id} and status='funded';


-- SQL statments for donorController.js
UPDATE orgs SET org_name = ?, type = ?, status = ?, contact_name = ?, phone_number = ?, email = ?, webaddress = ?, address_line1 = ?, address_line2 = ?, city = ?, zipcode=?, state =?, comments = ? WHERE org_id = ?;
SELECT * FROM orgs WHERE org_id = ${req.params.id};

SELECT SUM(amount) AS grants_total_amount FROM orggrants WHERE org_id=${req.params.id};
SELECT * FROM orggrants WHERE org_id=${req.params.id}

 
-- Joins org_grants and orgs tables for reports
Select Orgs.org_id,org_name,designation, orggrants.status, application_due_date 'Application due date', 
date_applied 'Date applied',grant_decision_date 'Approved date',funds_received_date 'Funded Date',
report_due_date 'Report Due Date'
From Orgs
INNER JOIN OrgGrants ON Orgs.org_id = OrgGrants.org_id
AND application_due_date BETWEEN '2019-12-05' AND '2022-05-09' 
ORDER BY application_due_date ASC;

-- list some of the orgs data, and how many grants an org gave
SELECT orgs.org_id, `org_name`, `type`, orgs.status, SUM(amount) AS grants_total_amount, `contact_name`, `address_line1`, `address_line2`,`city`,`zipcode`,`state`,`phone_number`, 

COUNT( * ) 'total grants'
FROM orgs, orggrants 
WHERE orgs.org_id = orggrants.org_id AND orggrants.status ='funded'
GROUP BY orggrants.org_id;

--sums the total amount of funds received by the organization in that year
SELECT org_id, year(funds_received_date) AS FundsRecvdDate, SUM(amount) AS Total_Donation
FROM orggrants
WHERE org_id = ${req.params.id} AND status = 'funded'
GROUP BY year(funds_received_date);

--sums the total amount of funds received by the organization in that year with dollar sign and commas
SELECT org_id, year(funds_received_date), concat('$', FORMAT(SUM(amount), 'C')) AS Total_Donation
FROM orggrants
WHERE org_id = ${req.params.id} and status = 'funded'
GROUP BY year(funds_received_date) desc;

--displays grants total amount witth dollar sign and commas
SELECT concat('$', FORMAT(ROUND(sum(amount), 'C'),2)) AS grants_total_amount 
FROM orggrants 
WHERE org_id=$(req.params.id) AND status='funded';

--displays which orgs donated the most in descending order
Select Orgs.org_id 'org id', org_name 'Organization Name', contact_name 'Contact Name', email, webaddress, SUM(amount) AS Total_Donation
From Orgs
INNER JOIN OrgGrants ON Orgs.org_id = OrgGrants.org_id
GROUP BY org_id
ORDER BY Total_Donation desc;

--displays amount donated for each designation to know how much funding is given to spend for each 
SELECT designation, SUM(amount) AS Total_Donation
FROM orggrants
GROUP BY designation


