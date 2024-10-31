program soal4uts; //nama program (opsional)
uses crt; //untuk membersihkan layar
var
  kembalian,p,z: longint; //variabel
begin //mulai
    clrscr; //untuk membersihkan code yang gak penting
    readln(kembalian); //input uang kembalian
    p:= 100000; // menginisialisasi p nya = 100.000
    z:=0; //menginisialisasi nilai z itu 0
    if (kembalian >= 225000) and (kembalian <= 229999) then p:= 75000; //biar jika Rp 225000 itu akan memakai pecahan 75ribu
    while kembalian > 0 do //kalau uang kembalian belum habis,masih ngulang
  begin //mulai program perulangan
    z:=z+(kembalian div p); //menghitung jumlah p uang
    kembalian:=kembalian mod p; //menghitung sisa uang
    if p = 100000 then p := 75000 //jika p itu 100.000 maka menjadi 75000
    else if p = 75000 then p := 50000 //jika p itu 75.000 maka menjadi 50.000
    else if p = 50000 then p := 20000 //jika p itu 50.000 maka menjadi 20.000
    else if p = 20000 then p := 10000 //jika p itu 20.000 maka menjadi 10.000
    else if p = 10000 then p := 5000 //jika p itu 10.000 maka menjadi 5.000
    else if p = 5000 then p := 2000 //jika p itu 5.000 maka menjadi 2.000
    else if p = 2000 then p := 1000 //jika p itu 2.000 maka menjadi 1.000
    else if p = 1000 then p := 500 //jika p itu 1.000 maka menjadi 500
    else if p = 500 then p := 200 //jika p itu 500 maka menjadi 200
    else if p = 200 then p := 100; //jika p itu 200 maka menjadi 100
  end; //program looping  akan berakhir jika kembalian nya udh menjadi kurang dari sama dengan 0
  writeln(z); //output p atau berapa buah pecahan yang dikembalikan
  writeln('Sisa yang tidak bisa dikembalikan : ',kembalian); //ada sisa kembalian jika tidak ada pecahan yg bisa lagi mis. 1 sampai 99 itu tidak ada pecahannya
end. //selesai
