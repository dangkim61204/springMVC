create database ban_hang2
go
use ban_hang2
go

create table Categories
(
     id int primary key identity,
     name nvarchar(100) unique not null,
     parentid INT NULL
)
go
create table Products
(
     id int primary key identity,
     name nvarchar(100) unique not null,
     price float null,
     image nvarchar(255) not null,
     description  NTEXT,
     categoryid int foreign key references Categories(id),
     createdate Date,
     active bit
) 
go
create table  Accounts
(	
    id int primary key identity,
    name varchar(100) NOT NULL,
    email varchar(50) NOT NULL unique,
    password varchar(50) NOT NULL,
    phone varchar(12) not null,
    role varchar(50),
	active bit
)

go
  
create table Orders
(
    id varchar(16) primary key,
    name varchar(100) NOT NULL,
    email varchar(50) NOT NULL,
    address varchar(200) not null,
    phone varchar(50),
    account_id int not null,
    FOREIGN KEY (account_id) REFERENCES Accounts(id),
    order_date date,
    active bit default '0'
  
)
go
create table Order_Detail 
(
    id int primary key identity,
    order_id varchar(16) not null,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    product_id int not null,
    FOREIGN KEY (product_id) REFERENCES Products(id),
    quantity int,
    price float 

)
go


insert into Categories(name,parentid)
values
(N'Loa',NULL),
(N'Túi Xách',NULL),
(N'Ba Lô',NULL),
(N'Giày',NULL),
(N'Kính',NULL),
(N'Dồng Hồ',NULL)
go
insert into Products (name,price,image,description,categoryid,createdate,active)
values
(N'Ultimate 3D Bluetooth Speaker',490000,'product-1.jpg',N'Thiết kế kháng nước IPX7, cho phép bạn sử dụng loa trong môi trường ẩm ướt, Thời gian sử dụng lên đến 10 tiếng liên tục, tùy theo mức âm lượng và thể loại nhạc Thiết kế di động và thời trang',1,GETDATE(),1),
(N'Loa Bluetooth JBL Go 3',500000,'product-1-2.jpg',N'Thời lượng pin: lên đến 5 giờ( Tùy thuộc vào thể loại nhạc và mức âm lượng), Chống thấm nước và chống bụi IP67, Hệ thống Bluetooth v5.1, Cổng kết nối USB-CMàu sắc đa dạng',1,GETDATE(),1),
(N'Circled Ultimate 3D Speaker',700000,'product-3.jpg',N'Loa đẹp',1,GETDATE(),1),
(N'Blue Backpack for the Young - S',100000,'product-4.jpg',N'Balo đẹp',1,GETDATE(),1),
(N'Casual Spring Blue Shoes',200000,'product-5.jpg',N'Giày đẹp',1,GETDATE(),1),
(N'Men Black Gentle Belt',200000,'product-6.jpg',N'Thắt lưng da đẹp',1,GETDATE(),1),
(N'Brown-Black Men Casual Glasses',500000,'product-7.jpg',N'giày vip',1,GETDATE(),1),
(N'Brown-Black Men Casual Glasses 2',500000,'product-8.jpg',N'kính vip',1,GETDATE(),1),
(N'Brown-Black Men Casual Glasses 2.1',500000,'product-8.jpg',N'kính đẹp',1,GETDATE(),1),
(N'Basketball Sports Blue Shoes',500000,'product-9.jpg',N'giày đẹp',1,GETDATE(),1),
(N'Brown HandBag',500000,'product-11.jpg',N'tui đẹp',1,GETDATE(),1)


go
insert into Accounts values('admin12345',N'kimdang612004@gmail.com',N'827ccb0eea8a706c4c34a16891f84e7b','0375058314','admin',1)
insert into Accounts values('kimdang',N'kimvandang612004@gmail.com',N'827ccb0eea8a706c4c34a16891f84e7b','0375058314','user',1)
