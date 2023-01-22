-- MENGHITUNG JUMLAH DETIK        jumlahDetik j m d

-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
{-
jumlahDetik j m d akan mengkonversi waktu yang diberikan dalam bentuk jam, menit, dan detik
menjadi detik semua. Jam (j) yang diberikan pasti berada di antara 0 sampai 23 sedangkan untuk 
menit (m) dan detik (d) yang diberikan akan selalu berada di antara 0 sampai 59.
-}

-- REALISASI
jumlahDetik j m d = (j * 3600) + (m * 60) + d

