| NRP        | NAMA                       |
| ---------- | -------------------------- |
| 5025201145 | Mochamad Revanza Kurniawan |

## Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### A
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```r
p = 0.20
n = 3
dgeom(x = n, prob = p)
```
Menggunakan fungsi dgeom untuk menghitung peluang distribusi geometrik

### B
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```r
mean(rgeom(n = 10000, prob = p) == 3)
```
Untuk menghitung dengan data yang random bisa menggunakan fungsi rgeom lalu hitung meannya dengan fungsi mean()

### C
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan? <br>
Poin a didapatkan nilai 0.1024 dan poin b didapatkan nilai 0.1033 <br>
Poin a merupakan hasil perhitungan eksak sedangkan poin b melalui proses simulasi dengan mengenerate data random kemudian di rata-rata. Ternyata hasil keduanya tidak berbeda jauh

### D 
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
![image](https://user-images.githubusercontent.com/73029778/162607546-b4e42789-55e0-42a9-88d2-f703b9aafecd.png)

### E
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```r
1/p #mean
(1 - p) / p^2 #variance
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### A
Peluang terdapat 4 pasien yang sembuh.
```r
p = 0.2
n = 20
X = 4
dbinom(x = X, size = n, prob = p)
```
Menggunakan fungsi dbinom untuk menghitung peluang distribusi binomial 

### B
Gambarkan grafik histogram berdasarkan kasus tersebut.
![image](https://user-images.githubusercontent.com/73029778/162607613-349e05dc-28eb-49cd-b6d8-b111a1b40bb5.png)

### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```r
n*p #mean
n*p(1-p) #variance
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### A
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
X = 6
lambda = 4.5
dpois(x = X, lambda = lambda)
```
Menggunakan fungsi dpois untuk menghitung peluang distribusi poisson

### B
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
![image](https://user-images.githubusercontent.com/73029778/162607674-56f2e9e8-1e66-4605-8b51-1e8b47419348.png)

### C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan <br>
Poin a didapatkan nilai 0.1281201 dan poin b didapatkan nilai 0.1150685 <br>
Poin a merupakan hasil perhitungan eksak sedangkan poin b melalui proses simulasi. Ternyata hasil keduanya tidak berbeda jauh

### D 
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
```r
lambda #mean
lambda #variance
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### A
Fungsi Probabilitas dari Distribusi Chi-Square
```r
X = 2
v = 10
dchisq(x = X,df = v)
```
Menggunakan fungsi dchisq untuk menghitung peluang distribusi Chi-Square

### B
Histogram dari Distribusi Chi-Square dengan 100 data random.
![image](https://user-images.githubusercontent.com/73029778/162607854-08d6e109-1332-4439-9c07-cf9eb3727924.png)

### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```r
v #mean
2*v #variance
``` 
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### A
Fungsi Probabilitas dari Distribusi Exponensial
```r
lambda = 3
dexp(x = seq(1, 10, by = 0.1) , rate = lambda)
```
Menggunakan fungsi dexp untuk menghitung peluang distribusi exponensial. nilai x adalah nilai 1 - 10 dengan interval 0.1

### B
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
![image](https://user-images.githubusercontent.com/73029778/162607898-b8fa4d15-74bf-4d31-959b-33e2e173b55a.png)
![image](https://user-images.githubusercontent.com/73029778/162607905-a9590f69-ca26-4815-ab04-3d1f20dc23e1.png)
![image](https://user-images.githubusercontent.com/73029778/162607909-b734fd60-a05c-4aa9-880a-55cb02d37be4.png)
![image](https://user-images.githubusercontent.com/73029778/162607914-7b821488-ec75-4efd-9dd8-a289753baa94.png)

### C
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```r
n = 100
mean(rexp(n = n, rate = lambda))
var(rexp(n = n, rate = lambda))
```
Menggunakan fungsi mean untuk menghitung rata-rata dan fungsi var untuk menghitung varian

## Nomor 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### A
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
```r
n = 100;
sd = 8
mean = 50

set.seed(n)
random = rnorm(n, mean, sd)
avg = mean(random)
x1 = floor(avg)
x2 = ceiling(avg)
dn = pnorm(x2, mean, sd, lower.tail = TRUE) - pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)
```
Pertama generate nilai randomnya lalu di rata-rata. Setelah itu bisa didapatkan nilai x1 dan x2. Kemudian baru hitung peluang distribusi normal P(X1 ≤ x ≤ X2). Peluang distribusi normal P(X1 ≤ x ≤ X2) bisa didapat dari P(x ≤ X2) -  P(x ≤ X1). Tinggal dihitung menggunakan fungsi pnorm

```r
z_score_x1 = (x1-mean)/sd
z_score_x2 = (x2-mean)/sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)
```
Nilai z-score didapat dari x-mean/sd

Berikut adalah plot data generate randomnya
![image](https://user-images.githubusercontent.com/73029778/162608116-848d3bda-7e29-4ca6-8f27-399b2a2ec165.png)

### B
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram  <br>
![image](https://user-images.githubusercontent.com/73029778/162608120-601bd25e-5d31-4656-86e5-bde88ad8e6ef.png)

### C
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```r
var(rnorm(n, mean, sd))
```
Menggunakan fungsi var untuk mencari varian 
