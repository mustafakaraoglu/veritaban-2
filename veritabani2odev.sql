create database mustafa34;
use mustafa34; 

create table ogrencilerrr(
ogrnoID int,
ogradi varchar(50),
ogrsoyadi varchar(50),
bolumid int,
sınıfID int,
primary key (ogrnoID) 
);
insert into ogrencilerrr(ogrnoID,ogradi,ogrsoyadi,bolumid,sınıfID)
values(1,'Berkay','Yolcu',1,1),
(2,'Yiğit','Karagöz',2,2),
(3,'Oğuzhan','Kodcu',3,3),
(4,'Mete','Daskın',4,4),
(5,'Süleyman','Çakır',5,5);

select * from ogrencilerrr;

create table derslerrr(
dersID int,
dersadi varchar(50),
derskodu varchar(50),
kredi int,
bolumid int,
ogrnoID int,
primary key (dersID)
);
select * from derslerrr;
  insert into derslerrr(dersID,dersadi,derskodu,kredi,bolumid,ogrnoID)
values(1,'Matematik','MAT01',4,1,1),
(2,'Beden Eğitimi','BED01',2,2,2),
(3,'Fizik','FİZ01',3,3,3),
(4,'Dil Anlatım','Dil01',4,4,4),
(5,'Kimya','Kim01',2,5,5);


create table bolumler(
bolumid int,
bolumadi varchar(50),
ogrnoID int,
dersID int,
primary key (bolumid)
);
select * from bolumler;

  insert into bolumler(bolumid,bolumadi,ogrnoID,dersID)
values(1,'Muhasabe',1,1),
(2,'Bilişim Teknolojileri',2,2),
(3,'Büro Yönetimi',3,3),
(4,'Makine Teknolojisi',4,4),
(5,'Elektrik ve Elektronik',5,5);



create table ogretmennn(
ogretmenID int,
adi varchar(50),
soyad varchar(50),
dersID int,
ogrnoID int,
primary key (ogretmenID)
);
select * from ogretmennn;
  insert into ogretmennn(ogretmenID,adi,soyad,dersID,ogrnoID)
values(1,'Ahmet','Aydın',1,1),
(2,'Mehmet','Yakup',2,2),
(3,'Selim','Kalender',3,3),
(4,'İlayda','Sabuncu',4,4),
(5,'Yasemin','Ziya',5,5);


create table ogretmen_ders(
ogretmenID int,
dersID int,
primary key (ogretmenID)
);
select * from ogretmen_ders;

insert into ogretmen_ders(ogretmenID,dersID)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,5);


create table sınıflar(
sınıfID int,
sınıf varchar(5),
ogrnoID int,
primary key(sınıfID)
);
insert into sınıflar(sınıfID,sınıf,ogrnoID)
values(1,'9-A',1),
(2,'10-B',2),
(3,'9-B',3),
(4,'10-A',4),
(5,'9-C',5);

select * from sınıflar;

select * from ogrencilerrr
inner join bolumler on ogrencilerrr.bolumid=bolumler.bolumid;  

select * from derslerrr
inner join ogrencilerrr on derslerrr.ogrnoID=ogrencilerrr.ogrnoID;  

select * from ogrencilerrr
inner join sınıflar on ogrencilerrr.sınıfID=sınıflar.sınıfID;   

select * from bolumler
inner join derslerrr on bolumler.dersID=derslerrr.dersID;  

select * from ogretmen_ders
inner join derslerrr on ogretmen_ders.dersID=derslerrr.dersID;  

select * from ogretmennn
inner join derslerrr on ogretmennn.dersID=derslerrr.dersID;  



