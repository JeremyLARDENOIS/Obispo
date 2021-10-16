# Obispo

Script for CTF OpenCyCom First Edition.

## Rewards

I kept images in /datas in rewards ^-^

## Explaination

### Get datas

The website deserve an image different at each request.

The name of the image is find in the HTTP header

So, to collect all images, i launch `get_datas.sh` until i think that i get all images.

```bash
./get_datas.sh
```

### Get flags

To get flags, i discover that some metadata was in the file to exif format like :

```bash
$ exif datas/1.jpg
Marqueurs EXIF dans « datas/1.jpg » (ordre des octets « Motorola ») :
--------------------+----------------------------------------------------------
Marqueur            |Valeur
--------------------+----------------------------------------------------------
Résolution X        |96
Résolution Y        |96
Artiste             |Tm9wZQ==
Unité de la résoluti|pouces
Version d’Exif      |Exif version 2.1
FlashPixVersion     |FlashPix version 1.0
Espace des couleurs |Non calibré
--------------------+----------------------------------------------------------
```

We can see that the artist have a base64 value, that, if I decode it, we have :

```bash
$ echo Tm9wZQ== | base64 -d
Nope
```

So i decided to print all artistes differents of the artist "Nope" encoded with a script and after decode it

```bash
$ ./good.sh | base64 -d
“C++: An octopus made by  flag{0bisp0_All_Access}  nailing extra legs g.”
```

The flag is `flag{0bisp0_All_Access}` ! We found it !
