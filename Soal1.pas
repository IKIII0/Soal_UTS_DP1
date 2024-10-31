program harga_jarak; //nama program (opsional)
uses crt; // untuk clearscreen
var 
    km,total,total1:real; //variabel
    prem:string; //variabel
begin //mulai
    clrscr; //bersihkan hal gak penting
    Write('Jarak (KM) : '); readln(km); //Input jarak dalam (KM)
    Write('Anggota Premium : '); readln(prem); //Input Apakah anggota premium 
begin //memulai program if
    if (km < 5) then //jika km kurang dari 5
        total:= km*5000 + 20000 //maka akan menghitung sesuai ketentuan
    else if (km >= 5) and (km <= 10) then //jika km diantara 5 dan 10 
        total:= km*4000 + 20000 //maka akan menghitung sesuai ketentuan
    else //jika tidak juga berarti km pasti lebih dari 10
        total:= km*3000 + 20000; //maka akan di hitung sesuai ketentuannya
    total1:= total; //menginisialisasi total sama dengan total1
    if (total1 > 100000) and (prem = 'True') or (prem = 'true') then //jika harga total1 itu lebih dari 100000 dan dia premium
        total1:= total1*0.85 //maka akan dapat diskon sebesar 15%
    else if (prem = 'True') or (prem = 'true') then //jika hanya anggota premium saja
        total1:= total1*0.95 //maka akan dapat diskon 5%
    else if (total1 > 100000) then //jika cuma harga total1 yang leibh dari 100000 dan tidak premium
        total1:= total1*0.90 //maka akan mendapat diskon 10%
    else //jika tidak juga, ya gak ada diskon
        total1:=total; //menginialisasi total sama dengan total1
end; //selesai program if
    Writeln('Total Akhir : ',total1:0:2); //output(hasil)
end. //selesai
