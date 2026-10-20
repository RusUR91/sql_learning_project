SELECT pn1.name as person_name1, pn2.name as person_name2, pn2.address as common_address
FROM person pn1, person pn2
WHERE pn1.address = pn2.address and pn1.id > pn2.id
ORDER BY person_name1, person_name2, common_address ASC;
