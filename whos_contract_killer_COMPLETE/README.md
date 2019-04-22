# who's contract killer ?
**Category:** web <br>
**Point:** 50

> aHR0cDovLzVocHVjd203c3RraG4zbXluczd2ajRuNzJtNDVlNGV1bnQzaHBxdDNhb2t4YjJ6anM3emphZ2FkLm9uaW9uLw==

---

Langkah pertama menyelesaikan challenge ini adalah dengan decode cipher menggunakan **base64**.

```console
┌─[haz@haz]─[whos_contract_killer_COMPLETE]
└──╼ $echo aHR0cDovLzVocHVjd203c3RraG4zbXluczd2ajRuNzJtNDVlNGV1bnQzaHBxdDNhb2t4YjJ6anM3emphZ2FkLm9uaW9uLw== | base64 -d
http://5hpucwm7stkhn3myns7vj4n72m45e4eunt3hpqt3aokxb2zjs7zjagad.onion/
```

Pesan hasil decode adalah alamat website dengan domain `.onion`. Untuk mengakses domain ini bisa dilakukan dengan menggunakan browser [Tor](https://www.torproject.org/download/). Buka browser **Tor** dan buka alamat `http://5hpucwm7stkhn3myns7vj4n72m45e4eunt3hpqt3aokxb2zjs7zjagad.onion/`.

Ketika berhasil mengakses website menggunakan **Tor**, kita mendapat 1 cipher yang bisa kita decode menggunakan **base64**.

```console
┌─[haz@haz]─[whos_contract_killer_COMPLETE]
└──╼ $echo c2VjYXJteXsxX2FtX2MwbnRyNGN0X2sxbGwzcn0= | base64 -d
secarmy{1_am_c0ntr4ct_k1ll3r}
```

flag : `secarmy{1_am_c0ntr4ct_k1ll3r}`
