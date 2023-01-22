-- BERAPA DOLLAR DAN BERAPA SEN?                       dollarSen q d n p

-- DEFINISI DAN SPESIFIKASI
dollarSen :: Int -> Int -> Int -> Int -> (Int, Int)
{-
dollarSen q d n p akan mengubah semua input menjadi sebuah pasangan nilai (dollar, sen).
Pada awalnya semua input akan diubah ke sen dan di jumlahkan. Jumlah sen tersebut nantinya
akan diubah lagi menjadi pasangan nilai (dollar, sen). 1 dollar = 100 sen, 1 quarter (q) = 25 sen,
1 dime (d) = 10 sen, 1 nickel (n) = 5 sen, 1 penny (p) = 1 sen.
-}

-- REALISASI
dollarSen q d n p = 
    let sen = (q * 25) + (d * 10) + (n * 5) + p
    in
        if (sen >= 100) then ((div sen 100), (mod sen 100))
        else (0, sen)