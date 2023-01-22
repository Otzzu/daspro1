-- MENCARI NILAI TENGAH                nilaiTengah x y z

-- DEFINISI DAN SPESIFIKASI
max3 :: Int -> Int -> Int -> Int
{-
max3 x y z mengembalikan nilai maksimum/terbesar dari x, y, dan z
-}
min3 :: Int -> Int -> Int -> Int
{-
min3 x y z mengembalikan nilai minimum/terkecil dari x, y, dan z
-}
nilaiTengah :: Int -> Int -> Int -> Int
{-
nilaiTengah x y z akan mengembalikan sebuah integer yang merupakan nilai tengah dari
x, y, dan z yang jika diurutkan berada di tengah
-}

-- REALISASI
max3 x y z  
    | (x > y) && (x > z) = x
    | (y > x) && (y > z) = y
    | (z > y) && (z > x) = z

min3 x y z 
    | (x < y) && (x < z) = x
    | (y < x) && (y < z) = y
    | (z < y) && (z < x) = z

nilaiTengah x y z =
    let min = min3 x y z
        max = max3 x y z
    in
        if (x < max) && (x > min) then x
        else if (y < max) && (y > min) then y
        else z
