----Query codes used to check--------
SELECT cm.contact_id, cm.company_name,
cn.last_name, cn.email
FROM campaign AS cm
JOIN contacts AS cn On (cm.contact_id = cn.contact_id)
Where cm.contact_id < 5000
;
-------------------------------------
SELECT first_name, last_name, email
FROM contacts
WHERE contact_id > 5000
;
-------------------------------------
SELECT *
FROM category
;
-------------------------------------
SELECT *
FROM subcategory
;
------------------------------------