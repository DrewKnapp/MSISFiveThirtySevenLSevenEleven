--Andrew Knapp
--MSIS 527 L711
--Database Management 1
--Assignment 4

--Question 1 Answer:
SELECT CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTBAL FROM Common.Customer;
--Question 2 Answer:
SELECT CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTBAL FROM Common.Customer WHERE CUSTSTATE = 'CO';
--Question 3 Answer:
SELECT * FROM COMMON.PRODUCT WHERE PRODPRICE > 50 ORDER BY PRODMFG,PRODNAME;
--Question 4 Answer:
SELECT OrdNo,ORDDATE,ORDNAME FROM COMMON.ORDERTBL WHERE ORDCITY = 'Denver' OR ORDCITY = 'Englewood';
--Question 5 Answer:
SELECT Custno,CustFirstName,CustLastName,CUSTCITY,CUSTBAL FROM COMMON.Customer WHERE (CustCity = 'Denver' AND CUSTBAL > 150 ) OR (CustCity = 'Seattle' AND CUSTBAL > 300);
--Question 6 Answer:
SELECT UNIQUE ORDCITY,ORDSTATE FROM COMMON.ORDERTBL;
--Question 7 Answer:
SELECT * FROM COMMON.ORDERTBL WHERE TO_NUMBER((to_char(ORDDATE, 'MM')))=1 AND EMPNO IS NULL;
--Question 8 Answer:
SELECT * FROM COMMON.ORDERTBL WHERE TO_NUMBER((to_char(ORDDATE, 'MM')))=2 AND EMPNO IS NOT NULL;
--Question 9 Answer:
SELECT * FROM COMMON.PRODUCT WHERE PRODNAME LIKE '%Ink Jet%';
--Question 10 Answer:
SELECT ORDNO,ORDDATE,CUSTNO FROM COMMON.ORDERTBL WHERE ORDSTATE = 'WA' AND ((TO_NUMBER(to_char(ORDDATE, 'MM'))=1 AND TO_NUMBER(to_char(ORDDATE, 'DD'))>23) or TO_NUMBER(to_char(ORDDATE, 'MM'))>=2); 
--Question 11 Answer:
SELECT ORDNO,ORDDATE,COMMON.CUSTOMER.CUSTNO,COMMON.CUSTOMER.CUSTFIRSTNAME,COMMON.CUSTOMER.CUSTLASTNAME FROM COMMON.ORDERTBL,COMMON.CUSTOMER WHERE ORDSTATE = 'CO' AND TO_NUMBER(to_char(ORDDATE, 'MM'))=1 AND COMMON.CUSTOMER.CUSTNO = COMMON.ORDERTBL.CUSTNO; 
--Question 12 Answer:
SELECT ORDNO,ORDDATE,COMMON.CUSTOMER.CUSTNO,COMMON.CUSTOMER.CUSTFIRSTNAME,COMMON.CUSTOMER.CUSTLASTNAME FROM COMMON.ORDERTBL,COMMON.CUSTOMER WHERE CUSTSTATE = 'CO' AND ORDSTATE = 'WA' AND TO_NUMBER(to_char(ORDDATE, 'MM'))=1 AND COMMON.CUSTOMER.CUSTNO = COMMON.ORDERTBL.CUSTNO; 
--Question 13 Answer:
SELECT UNIQUE COMMON.CUSTOMER.CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTBAL FROM COMMON.CUSTOMER,COMMON.ORDERTBL WHERE CUSTSTATE = 'WA' AND TO_NUMBER(to_char(ORDDATE, 'MM'))=2 AND COMMON.CUSTOMER.CUSTNO = COMMON.ORDERTBL.CUSTNO;
--Question 14 Answer:
SELECT ORDNO,ORDDATE,COMMON.CUSTOMER.CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,COMMON.EMPLOYEE.EMPNO,EMPFIRSTNAME,EMPLASTNAME FROM COMMON.CUSTOMER,COMMON.ORDERTBL,COMMON.EMPLOYEE WHERE CUSTSTATE = 'CO' AND TO_NUMBER(to_char(ORDDATE, 'MM'))=1 AND TO_NUMBER(to_char(ORDDATE, 'YYYY'))=2013 AND COMMON.CUSTOMER.CUSTNO = COMMON.ORDERTBL.CUSTNO AND (COMMON.ORDERTBL.EMPNO = COMMON.EMPLOYEE.EMPNO);
--Question 15 Answer:
SELECT UNIQUE COMMON.EMPLOYEE.EMPNO,EMPFIRSTNAME,EMPLASTNAME,EMPPHONE FROM COMMON.CUSTOMER,COMMON.ORDERTBL,COMMON.EMPLOYEE WHERE CUSTBAL > 300 AND TO_NUMBER(to_char(ORDDATE, 'MM'))=1 AND TO_NUMBER(to_char(ORDDATE, 'YYYY'))=2013 AND COMMON.CUSTOMER.CUSTNO = COMMON.ORDERTBL.CUSTNO AND (COMMON.ORDERTBL.EMPNO = COMMON.EMPLOYEE.EMPNO);
