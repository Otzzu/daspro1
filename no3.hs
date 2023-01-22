-- APAKAH DATE VALID?          isDateValid d m y

-- DEFINISI DAN SPESIFIKASI
isDateValid :: Int -> Int -> Int -> Bool
{-
isDateValid d m y mengembalikan nilai true jika d,m,y membentuk date yang
valid. Definisi date yang valid adalah jika elemen hari (d) bernilai antara 1
dan 31, tergantung pada bulan dan apakah tahun kabisat atau bukan, elemen bulan
(m) bernilai antara 1 dan 12, dan elemen tahun (y) bernilai antara 0 dan 99. Nilai
y mewakili tahun 1900 s.d. 1999 
-}
isKabisat :: Int -> Bool
{-
isKabisat y akan mengembalikan True jika tahun yang diberikan merupakan tahun kabisat.
Tahun yang diberikan akan ditambahkan dengan 1900 terlebih dahulu lalu nanti akan dibagi dengan 4
sesuai dengan syarat tahun kabisat. Jika bisa dibagi 4 maka tahun tersebut adalah kabisat. Pengecualian untuk
tahun 1900 meskipun bisa dibagi 4 akan tetapi bukan termasuk tahun kabisat karena untuk tahun abad baru
bisa dikatakan tahun kabisat jika bisa dibagi 400
-}
dayInMonth :: Int -> Int -> Int
{-
dayInMonth m y akan mengembalikan banyak hari dalam sebulan. Untuk tahun kabisat
bulan 2 akan memiliki 29 hari sedangkan jika bukan tahun kabisat bulan 2 akan memiliki 
28 hari. Untuk bulan < 8, bulan ganjil akan memiliki 31 hari sedangkan bulan genap akan 
memiliki 30 hari. Untuk bulan >=8, bulan ganjil akan memiliki 30 hari sedangkan bulan genap akan 
memiliki 31 hari.
-}

-- REALISASI
isDateValid d m y = 
    if (y < 0) || (y > 99) then False
    else if (m < 1) || (m > 12) then False
    else if (d < 1) || (d > dayInMonth m y) then False
    else True 

isKabisat y = 
    let year = 1900 + y
    in
        if (y > 0) then (mod year 4) == 0
        else False
        
dayInMonth m y =
    if (m == 2) then 
        if (isKabisat y == True) then 29
        else 28
    else if (m >= 8) then
        if (mod m 2) == 0 then 31
        else 30
    else 
        if (mod m 2) == 0 then 30
        else 31
    
