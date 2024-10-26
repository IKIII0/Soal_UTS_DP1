program soal3uts; //nama program (opsional)
uses crt; //untuk bisa clearscreen
var
    i,n,t:integer; //variabel
begin //mulai
    clrscr; //untuk clearscreen dan membuang code yang tidak diperlukan
    Write('n = '); readln(n); //input nilai n
    if (n mod 2 = 1) then //jika n di mod 2 = 1, berarti ganjil maka
    begin //masuk ke program ini 
        for i:= 1 to n do //loop untuk setiap baris
        begin //memulai
            for t:= 1 to n do //loop untuk setiap kolom
                begin //mulai
                    if (i = t) or (i + t = n + 1) then //memastikan sama atau tidak sesuai kondisi
                    write ('*') //cetak bintang jika iya
                    else //kalau nggak
                    write (' ') //maka cetak spasi
                end; //berakhir sesuai kolom
            writeln; //enter kebawah jika sudah siap di baris pertama dan setersunya
        end //berakhir
    end //program if berakhir
    else //jika tidak
    begin //mulai
        Writeln('angka tidak valid, harus angka ganjil'); //jika genap maka akan ada tampilan error
    end; //berakhir
end. //selesai
