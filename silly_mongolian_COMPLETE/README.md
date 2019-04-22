# Silly Mongolian
**Category:** web <br>
**Point:** 150

> Mongols are either stupid or smart, decide which one you are.
> 
> Challenge URL- Link Here
> Author: umair9747

linke : [Here](http://sec-army.ml/sillymongolian)

---

Kita disuguhkan dengan website yang memiliki input password dan tombol Submit. Jika kita teliti, tombol Submit memanggil fungsi bernama `mainFunction()`. Kita lihat lagi pada halaman `process.js`.

```javascript

function mainFunction() {
  var pass = document.getElementById("passcode");
  string = "this string is of no use";
  var wordArray = CryptoJS.enc.Utf8.parse(string);
  var base64 = CryptoJS.enc.Base64.stringify(wordArray);
  if (pass == base64){
    alert('ottt p aopur aol alea fvb zbitpaalk dhz dyvun iba thfil fvb zovbsk joljr aopz vba uvmshnolyl.oats');
  }
  else {
    alert('nvvk qvi olyl pz fvby mshn svjhapvu zpssftvunvsphu.oats');
  }
}
```

Sebenarnya tidak perlu memahami logika dari fungsi ini, kita hanya perlu melakukan _decoding_ cipher yang ada dalam pengkondisian sehingga bisa kita baca. Jika diteliti, algoritma yang dipakai adalah algoritma **_Caesar_**. Saya menggunakan tools [online decoder](https://www.dcode.fr/caesar-cipher) untuk mempercepat dekripsi.

Untuk pesan yang pertama (dalam `if`), bertuliskan
```
hmmm i think the text you submitted was wrong but maybe you should check this out noflaghere.html
```

Sedangkan untuk pesan yang kedua (dalam `else`), bertuliskan
```
good job here is your flag location sillymongolian.html
```

Kita buka alamat pada pesan pertama : `https://sec-army.ml/sillymongolian/noflaghere.html`

Disini kita mendapatkan cipher dalam bentuk base64, kita cukup gunakan perintah `base64` pada terminal.

```console
┌─[haz@haz]─[silly_mongolian_COMPLETE]
└──╼ $echo c2VjYXJteXtzbUBydF9tMG5nMGxfMXNfbXlfZnJpZW5kfQ== | base64 -d
secarmy{sm@rt_m0ng0l_1s_my_friend}
```

Di pesan pertama kita langsung mendapatkan flag yang dicari. Pada pesan kedua mengarahkan kita pada flag yang salah, sudah saya coba hehehe.

flag : `secarmy{sm@rt_m0ng0l_1s_my_friend}`