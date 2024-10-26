program soal2uts; //nama program(opsional)
uses crt; //untuk bisa clearscreen
var
n,berapa,berapa1,t,u:integer; //variabel
harga,hasil:real; //variabel
begin //memulai program
    clrscr; //membersihkan code yang tidak penting
    write('Masukan jumlah pelanggan : '); readln(n); //input jumlah pelanggan
    writeln; //enter ke bawah
    t:= 1; //menginisialisasi nilai t = 1
    repeat //program perulangan
        begin //memulai program repeat
            hasil:= 0; //menginisialisasi ulang bahwa hasil menjadi 0 kembali
            u:= 1; //menginisialisasi nilai u = 1
            writeln('Pelanggan ke-',t,':'); //menuliskan pelanggan ke berapa
            write('Masukan jumlah jenis sayur yang dibeli: '); readln(berapa); //input jumlah jenis sayur
            writeln; //enter ke bawah
            while u <= berapa do //mengulang u sampai kurang pas kurang dari variabel input berapa
            begin //mulai program perulangan
                write('Masukan harga sayur ke-',u,' : '); readln(harga); //input harga sayur
                write('Masukan jumlah sayur yang dibeli: ');readln(berapa1); // input jumlah sayur yang ingin dibeli
                hasil:= hasil + (harga * berapa1); //menghitung 
                u:= u + 1; //ketika u awal nya 1, ditambah satu menjadi 2 untuk memenuhi program looping
            end; //perulangan akan berakhir sesuai inputan variabel berapa tadi
                writeln('Total belanja untuk pelanggan ke-',t,' : ',hasil:0:2); //output hasil total belanja
                t:= t + 1; //untuk memenuhi batas perulangan yang repeat
            writeln; //enter kebawah
        end; //program repeat berakhir jika memang udh sesuai syarat
    until t > n; //repeat sampai var t sudah lebih dari var n
end. //selesai
