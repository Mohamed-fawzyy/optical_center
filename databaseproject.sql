
CREATE TABLE Customer(  
  
    customer_id INTEGER NOT NULL CHECK(customer_id>0),    
    customer_name char(25) not null,    
    email VARCHAR(20)NOT NULL,    
    phone integer UNIQUE,    
    gender char (6)not null,    
    PRIMARY KEY (customer_id)    
) 
;

CREATE TABLE Employee(  
  
    employee_id INT NOT NULL,    
    employee_name char(25) not null,    
    address varchar(25)not null,    
    age integer not null,    
    national_id INT not null,    
    email VARCHAR(20)NOT NULL,    
    phone INT not null,   
    PRIMARY KEY (employee_id)    
) 
;

CREATE TABLE inventory(  
  
    inventory_id INT not null,   
    inventory_location varchar(30)not null,   
    inventory_capacity INT not null,   
    inventory_availabilty int not null,  
    PRIMARY KEY(inventory_id)   
) 
;

CREATE TABLE Promotion(   
    discount_value INT not null,   
    discount_duration date not null,   
    discount_date date not null,   
    PRIMARY KEY(discount_value)   
) 
;

CREATE TABLE Supplier(  
  
    supplier_id INT not null,    
    supplier_name char(25) not null,    
    Email varchar (25) not null,    
    PRIMARY KEY(supplier_id)    
) 
;

 CREATE TABLE Product(  
  
    serial_Number NUMBER not null,     
    glasses_type char(25) not null,     
    quantity INT not null,     
    price INT not null,     
    brand char(25) not null,     
    discount INT,     
    inventory_id INT not null,     
    supplier_id INT not null,     
    PRIMARY KEY(serial_Number),     
    FOREIGN KEY(inventory_id) REFERENCES inventory (inventory_id),     
    FOREIGN key(supplier_id) REFERENCES SUPPLIER (supplier_id),     
    FOREIGN KEY(discount) REFERENCES PROMOTION (discount_value)     
) 
;

CREATE TABLE Transactions(  
  
    Transaction_id INT not null,  
    customer_id INT not null,     
    employee_id INT not null,     
    transaction_date date not null,     
    payment char(10) not null,     
    serial_Number NUMBER not null,     
    Return_ varchar(20)not null,     
    purchase varchar(20)not null,     
    PRIMARY KEY(Transaction_id),     
    FOREIGN KEY(customer_id)REFERENCES CUSTOMER (customer_id),     
    FOREIGN KEY(employee_id)REFERENCES EMPLOYEE (employee_id),     
    FOREIGN KEY(serial_Number)REFERENCES Product (serial_Number)  
) 
;

CREATE TABLE trPromotion(   
      
    discount_value INT not null,  
    discount_duration date not null,   
    discount_date date not null,   
    discount_durationU date not null,   
    discount_dateU date not null,  
    us varchar2(40)not null,  
    datec date not null,  
    PRIMARY KEY(discount_value)   
) 
;

ALTER TABLE Employee ADD gender CHAR(6) NOT NULL 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(1,'Ahmed Rady','Ahmedrady@icloud.com',01000000000,'male') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(2,'Adham Sabry','Adhamsabry@gmail.com',01111111111,'male') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(3,'Mohamed Fawzy','Mofwzy@gmail.com',01222222222,'male') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(4,'Victoria','Victoria@gmail.com',01333333333,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(5,'Scarlett','Scarlett@gmail.com',01444444444,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(6,'Grace','Grace@gmail.com',01555555555,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(7,'yara','yara@gmail.com',01666666666,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(8,'manar','manar@gmail.com',01777777777,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(9,'cilia','cilia@gmail.com',01888888888,'female') 
;

insert into customer(CUSTOMER_id,CUSTOMER_name,EMAIL,PHONE,GENDER)VALUES(10,'hossam','hossam@gmail.com',0199999999,'male') 
;

UPDATE Customer SET CUSTOMER_name='mohamed Fawzy'  WHERE CUSTOMER_id= '3' 
;

insert into EMPLOYEE (employee_id, employee_name, address, age, national_id, email, phone, gender) values (1, 'ahmed mosa', 'cairo', 25, 8792459, 'ahmed@gmail.com','01093342340', 'male') 
;

insert into EMPLOYEE (employee_id, employee_name, address, age, national_id, email, phone, gender) values (2, 'reda gamal', 'cairo', 35, 6355494, 'reda@gmail.com','01234342340', 'male') 
;

insert into EMPLOYEE (employee_id, employee_name, address, age, national_id, email, phone, gender) values (3, 'rana amgd', 'cairo', 26, 2133949, 'rana@gmail.com','01035542340', 'female') 
;

insert into EMPLOYEE (employee_id, employee_name, address, age, national_id, email, phone, gender) values (4, 'mahetab yosef', 'cairo', 29, 8793739, 'mahetab@gmail.com','01134323340', 'female') 
;
insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1222,'zaki@gamil.com','zaki')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1143,'may@gamil.com','may')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1121,'amr@gamil.com','Amr')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1134,'ahmed@gamil.com','ahmed')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1123,'gamal@gamil.com','gamal')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1132,'kamal@gamil.com','kamal')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1125,'Ramy@gamil.com','Ramy')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1138,'Ali@gamil.com','ali')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1126,'yousef@gamil.com','yousef')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1135,'khalid@gamil.com','khalid')
;
INSERT INTO inventory(inventory_id,inventory_location,inventory_capacity,inventory_availabilty)VALUES(2,'sheraton',1000,800)
;

INSERT INTO inventory(inventory_id,inventory_location,inventory_capacity,inventory_availabilty)VALUES(1,'new cairo',2000,1200)
;

INSERT INTO inventory(inventory_id,inventory_location,inventory_capacity,inventory_availabilty)VALUES(4,'new cairo',800,700)
;

INSERT INTO inventory(inventory_id,inventory_location,inventory_capacity,inventory_availabilty)VALUES(3,'maadi',1000,800)
;

INSERT INTO inventory(inventory_id,inventory_location,inventory_capacity,inventory_availabilty)VALUES(5,'nasr city',500,50)
;
insert into PROMOTION (DISCOUNT_VALUE,DISCOUNT_DURATION,DISCOUNT_DATE) values (50,date'2020-12-5',date'2021-6-1')
;

insert into PROMOTION (DISCOUNT_VALUE,DISCOUNT_DURATION,DISCOUNT_DATE) values (60,date'2021-2-4',date'2021-8-1')
;

insert into PROMOTION (DISCOUNT_VALUE,DISCOUNT_DURATION,DISCOUNT_DATE) values (20,date'2021-8-8',date'2022-6-20')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(6453, 'sunglasses', 560, 50, 2,1125,1,'reyBan')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(3873, 'eyelasses', 460, 50, 4, 1138, 2,'reyBan')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(2973, 'eyelasses', 720, 60, 1, 1126, 2,'lacoste')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1122,'zaki@gamil.com','zaki')
;

insert into SUPPLIER (SUPPLIER_ID,EMAIL,SUPPLIER_NAME) values (1133,'may@gamil.com','may')
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (10,'visa', '14', 500, 3,date'2021-5-21', 2973, 2)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (11,'cash', 'done', 200, 6,date '2021-5-23', 6453, 1)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (12,'visa', '14', 600, 4, date'2021-5-22', 3873, 3)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (21,'visa', 'done',1000 , 3, date'2021-5-22', 2973, 2)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (22,'cash', 'done',600 , 6, date'2021-5-22', 6453, 1)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (23,'visa', 'done',750 , 4, date'2021-5-22', 3873, 3)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (13,'visa', 10,450 , 5, date'2021-5-22', 3873, 4)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (14,'visa', 'done', 350, 2, date'2021-5-22', 3873, 5)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (15,'cash', 'done', 250, 1, date'2021-5-22', 6453, 2)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (16,'cash', 'done', 150, 7, date'2021-5-22', 3873, 3)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (17,'visa', 'done',100 , 8, date'2021-5-22', 2973, 4)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (18,'cash', 'done', 400, 9, date'2021-5-22', 6453, 5)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (19,'visa', 'done', 300, 10, date'2021-5-22', 2973, 1)
;

insert into TRANSACTIONS (TRANSACTION_ID,PAYMENT,RETURN_,PURCHASE,CUSTOMER_ID,TRANSACTION_DATE,serial_Number,EMPLOYEE_ID)  
values (20,'visa', 14, 144, 1, date'2021-5-22', 2973, 5)
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(6458, 'sunglasses', 560, 50, 1,1135,1,'reyBan')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(3879, 'eyelasses', 460, 50, 1, 1138, 2,'reyBan')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(2974, 'sunglasses', 934, 60, 2, 1135, 2,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(6578, 'eyelasses', 220, 60, 2, 1126, 2,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(6534, 'sunglasses', 320, 60, 2, 1125, 3,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(2390, 'eyelasses', 540, 60, 4, 1121, 1,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(2730, 'sunglasses', 220, 60, 3, 1222, 2,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(0873, 'eyelasses', 700, 60, 1, 1123, 1,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(3673, 'sunglasses', 920, 60, 5, 1132, 1,'lacoste')
;

insert into PRODUCT (serial_Number,GLASSES_TYPE,PRICE,DISCOUNT,INVENTORY_ID,SUPPLIER_ID,QUANTITY,BRAND)  
values(7489, 'eyelasses', 320, 60, 2, 1125, 2,'lacoste')
;


 
 select *   from product P inner join supplier  S  on P.supplier_id=S.supplier_id where p.glasses_type='eyelasses' 
;

select *   from transactions order by TRANSACTION_DATE 
;

select sum(purchase)from transactions 
;

select *   from customer C full outer join Transactions T  on C.customer_id =T.customer_id where T.PAYMENT='visa'
;

select max(purchase) from transactions group by employee_id
;
select serial_number,count(serial_number)from transactions group by serial_number
;

select *from transactions
;



/

create or replace procedure Uavailabilty(invetoryid number,availabilty number) 
is  
begin 
update inventory set inventory_availabilty=availabilty where inventory_id=invetoryid; 
Dbms_output.put_line('updated'); 
end; 


/

CREATE OR REPLACE TRIGGER updateoffer after  UPDATE ON promotion  
FOR EACH ROW  
BEGIN  
insert into trpromotion values(:new.discount_value,:old.discount_duration,:old.discount_date,:new.discount_duration,:new.discount_date,sysdate,user);  
END; 


/
/

CREATE OR REPLACE TRIGGER Checkcapacity  
after  
INSERT OR UPDATE ON inventory  
FOR EACH ROW  
BEGIN  
IF :new.inventory_availabilty>:old.inventory_capacity THEN  
raise_application_error(-20001, 'Availabilty of inventory should not be more than the capacity');  
END IF;  
END; 
 

/

create or replace function FUNCTION_1 (  
    Product_id in  NUMBER ,  
    D_value in  number   
) return number  
is  
    STARTD Date;  
    ENDD Date;  
    pprice number;  
    fprice number;  
begin  
    select price,discount_duration,discount_date   
    into pprice,STARTD,ENDD  
    from product P inner join promotion D   
    on P.discount=D.discount_value  
    where P.serial_Number=Product_id and D.discount_value=d_value ;  
      
    IF(STARTD <=sysdate AND sysdate<=ENDD)  
    then  
    fprice:= pprice-((d_value/100)*pprice);  
     return FPrice;  
     Dbms_output.put_line('price'||FPrice); 

     else   
     return pprice;  
     Dbms_output.put_line('price'||pprice); 
    end if;  
     
end FUNCTION_1;  
 

/
exec Uavailabilty(2,800); 
select * from product;
select FUNCTION_1(6453,50) from product ;