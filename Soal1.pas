//ketik kode jawaban no 1 kamu disiniprogram uts1; //nama program (opsional)
uses crt; //untuk clearscreen hihi :3
var 
    km,total,total1:real; //variabel 
    prem:string; //variabel
begin //mulai
    clrscr; //membersihkan hal yang gak penting (clearscreen)
    Write('Jarak (KM) : '); readln(km); //Input jarak
    Write('Anggota Premium : '); readln(prem); //Input anggota premium atau nggak

    if (km > 10) then //apakah km lebih dari 10?
    begin //mulai jika iya
     total1:= km*3000 + 20000; //menghitung dasar harga tanpa diskon
        if (prem = 'True') or (prem = 'true') then //apakah anggota premium
        begin //mulai jika anggota premium
        total:= total1 * 0.95; //kalau anggota premium dapat diskon 5%
            if (total1 > 100000) then //dan apakah harga dasar tanpa diskon tadi lebih dari Rp 100.000
            total:= total * 0.90; //jika iya, nah dapat diskon 10%
        end
        else if (prem = 'False') or (prem = 'false') then //bukan anggota premium?
        begin 
            if (total1 > 100000) then //apakah harga dasar lebih dari Rp 100.000
            total:= total1 * 0.90; //kalau iya, nah dapat diskon 10%, walaupun tidak premium
        end
    end //berakhir bagian jika km lebih dari 10

    else if (km >= 5) and (km <= 10) then //jika km bukan lebih dari 10 maka, apakah km antara 5 dan 10?
    begin //mulai jika iya
     total1:= km*4000 + 20000; //menghitung dasar harga tanpa diskon
        if (prem = 'True') or (prem = 'true') then //apakah anggota premium
        begin //mulai jika anggota premium
        total:= total1 * 0.95; //kalau anggota premium dapat diskon 5%
            if (total1 > 100000) then //dan apakah harga dasar tanpa diskon tadi lebih dari Rp 100.000
            total:= total * 0.90; //jika iya, nah dapat diskon 10%
        end
        else if (prem = 'False') or (prem = 'false') then //bukan anggota premium?
        begin 
            if (total1 > 100000) then //apakah harga dasar lebih dari Rp 100.000
            total:= total1 * 0.90; //kalau iya, nah dapat diskon 10%, walaupun tidak premium
        end
    end //berakhir bagian jika km antara 5 dan 10

    else if (km < 5) then //jika km bukan antara 5 dan 10 maka, apakah km kurang dari 5?
    begin //mulai jika iya
     total1:= km*5000 + 20000; //menghitung dasar harga tanpa diskon
        if (prem = 'True') or (prem = 'true') then //apakah anggota premium
        begin //mulai jika anggota premium
        total:= total1 * 0.95; //kalau anggota premium dapat diskon 5%
            if (total1 > 100000) then //dan apakah harga dasar tanpa diskon tadi lebih dari Rp 100.000
            total:= total * 0.90; //jika iya, nah dapat diskon 10%
        end
        else if (prem = 'False') or (prem = 'false') then //bukan anggota premium?
        begin 
            if (total1 > 100000) then //apakah harga dasar lebih dari Rp 100.000
            total:= total1 * 0.90; //kalau iya, nah dapat diskon 10%, walaupun tidak premium
        end
    end; //berakhir bagian jika km kurang dari 5
    Write('Total Akhir : ',total:0:2); //hasil total yang harus dibayar
end. //selesai
