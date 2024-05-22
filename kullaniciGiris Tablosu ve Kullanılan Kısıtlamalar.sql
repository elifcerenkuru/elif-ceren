use KelimeEzberlemeSistemi
create table kullaniciGiris
(
kullaniciID int primary key identity(1,1),
ad varchar(20),
soyad varchar(20),
TCNo varchar(11),
yetki varchar (15),
kullaniciAdi varchar(33),
parola varchar(8)
)
alter table kullaniciGiris
ADD CONSTRAINT UC_TCKimlikNo UNIQUE (TCNo)
alter table kullaniciGiris
ADD CONSTRAINT CC_parola CHECK(LEN(parola)=8) 

alter table kullaniciGiris add eposta varchar(45)


CREATE TABLE sorular(
soru text,
aSikki text,
bSikki text,
cSikki text,
dSikki text,
dogruCevap text
)

ALTER TABLE sorular add soruID int IDENTITY(1,1) PRIMARY KEY