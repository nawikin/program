                                                                                                                                                         ---  query mysql ---
 
-- ddl.

---membuat database
CREATE DATABASE nama_database;

create database if not exists nama_database;
if not exists di gunakan untuk membuat mysql tidak menampilkan pesan error jika database tersebut telah ada sebelumnya. 

---menampilkan database
SHOW DATABASES;

---menghapus database
DROP DATABASE nama_database;

drop database if exists nama_database;
if exists di gunakan untuk menghilangkan pesan error jika seandainya database tersebut memang tidak ada

------------------------------------------------------------------------------------------------------------
---membuat tabel baru
CREATE TABLE nama_table (
nama_kolom1 tipe data(panjang)NOT NULL AUTO_INCREMENT,
nama_kolom2 tipe data(panjang)NULL,
dll
PRIMARY KEY (nama_kolom1)
);
NOT NULL = tidak boleh kosong
NULL = boleh kosong



---melihat tabel
SHOW TABLES;

---melihat struktur/deskripsi tabel
DESC nama_table;
DESCRIBE nama_table;

---mengahapus table
DROP TABLE nama_table;

---menghapus isi tabel
TRUNCATE nama_table;
--------------------------------------------------------------------------------------------------------------
---mengubah stuktur tabel dengan alter

---merubah tipe data kolom
ALTER TABLE nama_tabel MODIFY nama_kolom   tipe_databaru;

---merubah nama kolom tabel
ALTER TABLE nama_tabel CHANGE nama_kolom   nama_kolom_baru   tipe_data;

---merubah nama tabel
ALTER TABLE nama_tabel_lama RENAME TO nama_tabel_baru;
RENAME TABLE nama_tabel_lama TO nama_tabel_baru;

---menambahkan kolom baru pada tabel
ALTER TABLE nama_tabel ADD nama_kolom_baru    tipe_data; 
ALTER TABLE nama_tabel ADD nama_kolom_baru    tipe_data  AFTER nama_kolom;

---menghapus kolom pada tabel
ALTER TABLE  nama_tabel DROP nama_kolom;

---menambahkan primary key pada tabel
ALTER TABLE nama_tabel ADD PRIMARY KEY (nama_kolom);

---mereset auto increment
ALTER TABLE nama_tabel AUTO_INCREMENT = 0;
--------------------------------------------------------------------------------------------------------------

---menambahkan data dengan insert

INSERT INTO nama_tabel VALUES ('nilai_kolom1','nilai_kolom2' dlln);
INSERT INTO nama_tabel (kolom1,kolom2 dlln) VALUES  ('nilai_kolom1','nilai_kolom2' dlln);

INSERT INTO nama_tabel SET kolom1='nilai_kolom',kolom2='nilai_kolom' dll;

INSERT IGNORE INTO nama_tabel VALUES('nilai_kolom1','nilai_kolom2' dlln);
ignore perintah ini memaksa mysql tetap menjalankan seluruh query walaupun terdapat error

--------------------------------------------------------------------------------------------------------------

---function(fungsi)

--fungsi COUNT()
fungsi count untuk menghitung jumlah semua baris pada suatu tabel 

SELECT COUNT(*) FROM nama_tabel;

--fungsi AVG()
fungsi untuk menghitung nilai rata-rata pada suatu kolom numerik

SELECT AVG (nama_kolom) FROM nama_tabel;

--fungsi SUM()
fungsi untuk menjumlahkan nilai pada suatu kolom
cmcccc
SELECT SUM(nama_kolom) FROM nama_tabel;

--fungsi 	MIN()
fungsi untuk mencari nilai paling kecil pada field numerik

SELECT MIN(nama_kolom) FROM nama_tabel;

--fungsi MAX()
fungsi untuk mencari nilai paling besar pada field numerik

SELECT MAX(nama_kolom ) FROM nama_tabel;

--------------------------------------------------------------------------------------------------------------

---mengubah data tabel
UPDATE nama_tabel SET nama_kolom = data_baru WHERE kondisi; 

---mengubah lebih dari 1 baris
UPDATE nama_tabel SET nama_kolom1 = data_baru,nama_kolom2 = data_baru dll WHERE nama_kolom ='nilai_kolom';

---mengubah seluruh kolom
UPDATE nama_tabel set nama_kolom = 'nilai_kolom'; 

--------------------------------------------------------------------------------------------------------------

---menghapus data tabel
DELETE FROM nama_tabel WHERE kondisi;

---menghapus 1 data
DELETE FROM nama_tabel WHERE nama_kolom ='nilai_kolom';

---menghapus seluruh isi tabel
DELETE FROM nama_tabel;


--------------------------------------------------------------------------------------------------------------

---melihat seluruh isi tabel
SELECT * FROM  nama_tabel;

---menampilkan kolom tertentu dari tabel 
SELECT nama_kolom1,nama_kolom2 dlln FROM nama_tabel;

---menghapus duplikasi baris sehingga menampilkan data yang unik

SELECT DISTINCT nama_kolom  from nama_tabel;

---meliahat data dengan kondisi tertentu
SELECT nama_kolom1,nama_kolom2 dll  FROM nama_tabel WHERE nama_kolom ='nilai_kolom';
SELECT nama_kolom1, nama_kolom2, dlln FROM nama_tabel WHERE kondisi;

---melihat 1 baris saja
SELECT * FROM nama_tabel WHERE nama_kolom = 'nilai_kolom';

-- kodisinya

-- operator aritmmatika
-- +
--  -
--  *
--  /
--  % 

-- operator logika
-- not atau !
-- and atau &&
-- or atau ||
-- xor

-- operatot perbandingan
-- =  
-- sama dengan

-- <>    !=  
-- tidak sama dengan

-- <=>

-- <
-- lebih kecil ddari

-- <=  
-- kurang dari atau sama dengan

-- >  
-- lebih besar dari

-- >=  
--  lebih besar dariatu sama dengan

-- bettween 
--  berada dalam rentan tertentu 

-- in 
-- menentukan beberapa nilai yang berada dalam sebuah kolom

-- not in
-- menentukan beberapa nilai yang tidak berada dalam sebuah kolom

-- is null
-- is not null

-- like  
-- kata kunci kriteria tertentu

-- regexp   rlike


---mengurutkan hasil tampilan data 

SELECT nama_kolom1,nama_kolom2 dll FROM nama_tabel WHERE kondisi ORDER BY nama_kolom_ urut;

SELECT * FROM nama_tabel  ORDER BY nama_kolom1,nama_kolom2,dll  ASC/DESC;

-- urut
-- ASC = urutan dari kecil ke besar
-- DESC =urutan dari besar ke kecil

---membatasi hasil tampilan data

SELECT nama_kolom1 FROM nama_tabel WHERE kondisi LIMIT baris_awal, jumlah_baris;

SELECT * FROM nama_tabel ORDER BY nama_kolom1,nama_kolom2 dll LIMIT 0,3;


---menampilkan tabel berdasarkan pencarian karakter sederhana LIKE

SELECT nama_kolom_tampil FROM nama_tabel WHERE nama_kolom_cari LIKE keyword_pencarian;
SELECT nama_kolom_tampil FROM nama_tabel WHERE nama_kolom_cari NOT LIKE keyword_pencarian;

--  keyword pencarian
-- _   karakter ganti yang cocok untuk satu karakter apa saja
-- %  karakter ganti yang cocok untuk karakter apa saja dengan panjang karakter tidak terbatas,termasuk tidak ada karakter 


-- 'huruf%'
-- menampilkan data yang di awali kata 'huruf',dan diikuti dengan karakter apa saja

-- '%huruf' 
-- menampilkan seluruh kata dengan panjang berapa pun yang di akhiri dengan huruf 

-- 'huruf_'
-- menampilkan kata yang di awali dengan huruf ,dan diikuti dengan satu karakter apa saja

-- 'huruf1_huruf2' 
-- menampilkan kata yang di awali dengan huruf1 diikuti oleh 2 karakter bebas,namun di akhiri dengan huruf2

-- '%kata%' 
-- menampilkan data yang mengandung kata.

-- '_huruf%'
--  menampilkan data yang karakter keduanya diawali dengan huruf


---pencarian data regular expression (REGEXP)
SELECT nama_kolom_tampil FROM nama_tabel WHERE nama_kolom_cari REGEXP keyword_reguler_expression;


-- keyword_reguler_expression
-- . : tanda titik dalam RegExp berarti sebuah karakter apa saja

-- [ … ]: tanda kurung siku ini berarti kumpulan karakter. Misalkan [abc] akan cocok dengan ‘a’, ‘b’, atau ‘c’.
--  kita bisa juga menggunakan jangkauan (range), contohnya [a-z] akan cocok dengan seluruh huruf, [0-9] akan cocok dengan seluruh angka.

-- *: tanda bintang ini akan cocok dengan 0 atau lebih karakter sebelumnya. Misalkan ‘a*’ berarti akan cocok dengan seluruh kata yang mengandung 0 atau lebih a.

-- ^: tanda pangkat atau topi ini menandakan berada di awal kata.

-- $: tanda dollar ini berarti bahwa pola berada di akhir kata.

-- ‘ab*’: Pola ini berarti akan cocok dengan seluruh kata yang mengandung a dan diikuti oleh b atau tidak sama sekali. 
-- Contohnya: ‘a’, ‘ab’, ‘abbbbbb’, dan juga ‘kebab’, karena untuk RegExp, kita harus menyatakan dimana karakter itu muncul.

-- ‘^ab*’: Pola ini sama artinya dengan ‘ab*’ seperti diatas, namun tanda ^ menyatakan bahwa pola ini harus berada di awal kata, sehingga ‘kebab’ tidak akan cocok.

-- ‘^s..i$’: Pola ini akan cocok dengan seluruh kata yang diawali dengan s, dan diakhiri dengan i, terdiri dari 4 huruf. Contohnya: susi, sapi, dan siti.


---pengelompokan data  GROUP BY

SELECT nama_kolom FROM nama_tabel GROUP BY nama_kolom;


---mengganti sementara nama kolom atau tabel (AS)
nama_tabel AS nama_tabel_baru;

SELECT nama_kolom1 AS nama_kolom_baru,nama_kolom2 AS nama_kolom_baru dll FROM nama_tabel;


---menyambungkan kolom
SELECT CONCAT (nama_kolom1,' spasi pemisah',nama_kolom2 dll) FROM nama_tabel; 
SELECT CONCAT (nama_kolom1,' spasi pemisah ',nama_kolom2 dll) AS 'kata2 judul' FROM nama_tabel; 


--------------------------------------------------------------------------------------------------------------


-- menggabungkan tabel INNER JOIN

SELECT nama_kolom_tampil FROM  nama_tabel_pertama INNER JOIN nama_tabel_kedua ON nama_kolom_join_tabel_pertama = nama_kolom_join_tabel_kedua;


--- USING  kedua tabel harus memiliki nama kolom yang sama 
SELECT nama_kolom_tampil FROM nama_tabel_pertama INNER JOIN nama_tabel_kedua USING (nama_kolom_join);










 













 



