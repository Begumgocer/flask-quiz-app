#Python Flask ile yapılan basit bir quiz sitesi 
#Gerekli kütüphaneler

from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL

#Flask uygulamasının oluşturulması
app = Flask(__name__)

#Veritabanı bağlantısı
app.config['MYSQL_HOST'] = 'localhost'  # MySQL sunucusunun adresi
app.config['MYSQL_USER'] = 'root'  # MySQL kullanıcı adınız
app.config['MYSQL_PASSWORD'] = 'begumgc'  # MySQL şifreniz
app.config['MYSQL_DB'] = 'ogrenciler'  # Kullanmak istediğiniz veritabanı adı

mysql = MySQL(app)

#Test sorularının cevapları
cevaplar = {
    'soru1': 'dil',
    'soru2': 'robot',
    'soru3': 'veri',
    'soru4': 'egitmek',
    'soru5': 'tekrar',
    'soru6': 'deneyim'}

#Link ile yönlendirme komutları
@app.route('/')
def ana():
    return render_template('anasayfa.html')

#Kullanıcının sorular sayfasında bulunan form kısımına verdiği cevapların alınması
@app.route('/sorular', methods=['GET', 'POST'])
def sorular():
    #Formda boş bir değer olduğunda; boş değerin hangi kısımdan geldiğinin(ad soyad veya test soruları) tespit edilmesi ve uygun hata mesajının ekrana yazdırılması
    hata_mesaji = None
    if request.method == 'POST':
        ad = request.form.get('ad')
        soyad = request.form.get('soyad')
        yas = request.form.get('yas')
        soru1 = request.form.get('soru1')
        soru2 = request.form.get('soru2')
        soru3 = request.form.get('soru3')
        soru4 = request.form.get('soru4')
        soru5 = request.form.get('soru5')
        soru6 = request.form.get('soru6')

        if not ad or not soyad or not yas:
            hata_mesaji = "Ad, Soyad ve Yaş alanları boş bırakılamaz!"
            return render_template('sonuc.html', hata_mesaji=hata_mesaji)
        if not soru1 or not soru2 or not soru3 or not soru4 or not soru5 or not soru6:
            hata_mesaji = "Lütfen tüm soruları cevaplayınız!"
            return render_template('sonuc.html', hata_mesaji=hata_mesaji)

        #Verilen doğru cevaplara göre test skorunun yüzdelik olarak hesaplanması
        soru_sayisi = len(cevaplar)
        puan = 0
        for soru, dogru_cevap in cevaplar.items():
            if request.form.get(soru) == dogru_cevap:
                puan += 1

        yuzdelik_puan = (puan / soru_sayisi) * 100

        #Kullanıcının cevaplarının veritabanına kaydedilmesi
        cur = mysql.connection.cursor()
        cur.execute("""
            INSERT INTO OgrenciCevaplari (ad, soyad, yas, soru1, soru2, soru3, soru4, soru5, soru6, puan)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (
            ad, soyad, yas,
            request.form.get('soru1'),
            request.form.get('soru2'),
            request.form.get('soru3'),
            request.form.get('soru4'),
            request.form.get('soru5'),
            request.form.get('soru6'),
            yuzdelik_puan
        ))
        mysql.connection.commit()
        cur.close()

        #Alınan puanın sorular sayfasında ekrana yazdırılması
        return redirect(url_for('sonuc', puan=yuzdelik_puan))
    return render_template('sorular.html')

@app.route('/sonuc')
def sonuc():
    puan = request.args.get('puan', 0)
    return render_template('sorular.html', puan=puan)

if __name__ == '__main__':
    app.run(debug=True)
