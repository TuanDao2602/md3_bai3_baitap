use quanlybanhang_baitap;
insert into customer
values(1,'minh quan', 10),
(2,'Ngoc Oanh', 20),
(3,'Hong Ha', 50);

insert into orders
values(1,1,'2006-3-21',18.5),
(2,2,'2006-3-23',20.6),
(3,1,'2006-3-16',30.7);

insert into product
values(1,'máy giặt',3),
(2,'tủ lạnh',5),
(3,'điều hòa',7),
(4,'quạt',1),
(5,'bếp điện',2);

insert into orderdetail
values(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
-- 1
select od.oid,od.odate,od.ototalprice
from order1 od;
-- 2
select cs.cname as tenkh,pr.pid as maSp,pr.pname as sanPham
from customer cs join order1 od on cs.cid = od.cid join orderdetail1 odt on odt.oid=od.oid join product pr on odt.pid = pr.pid
where odt.oid >0;

-- 3
-- 4
select od.oid,od.odate,od.ototalprice*odt.odqty as giaban
from orderdetail1 odt join order1 od on odt.oid = od.oid join product pr on odt.pid = pr.pid