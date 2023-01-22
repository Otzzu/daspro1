-- APAKAH JAM VALID?     isJamValid j m d

-- DEFINISI DAN SPESIFIKASI
isJamValid :: Int -> Int -> Int -> Bool
{- 
IsJamValid j m d menghasilkan nilai true jika j, m, d menyusun jam yang valid.
Definisi jam yang valid adalah jika elemen jam (j) bernilai antara 0 dan 23, 
elemen menit (m) bernilai antara 0 dan 59, dan elemen detik (d) bernilai antara 
0 dan 59.
-}

-- REALISASI
isJamValid j m d = 
    if (j > 23) || (j < 0) then False
    else if (m > 59) || (m < 0) then False
    else if (d > 59) || (d < 0) then False
    else True

