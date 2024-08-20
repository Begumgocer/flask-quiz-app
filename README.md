# Python Quiz Uygulaması
Bu proje, çocuklar için Python dilinde basit bir quiz uygulamasıdır. Kullanıcılar çeşitli soruları cevaplayarak puan toplarlar. 
Uygulama, Flask web çerçevesi ve MySQL veritabanı kullanılarak geliştirilmiştir.

## Özellikler
- Soruların kullanıcı tarafından cevaplanması
- Cevapların puan olarak hesaplanması
- Kullanıcı geri bildirimleri ve hata mesajları
- Form doğrulama
  
## Gereksinimler
- Python 3.x
- Flask
- MySQL Connector/Python veya PyMySQL
- (Gerekli diğer Python paketleri)
Kurulum için gerekli Python paketleri `requirements.txt` dosyasında belirtilmiştir.

## Kurulum
1. Bu projeyi klonlayın:
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    ```
2. Proje dizinine gidin:
    ```bash
    cd your-repo-name
    ```
3. Sanal ortam oluşturun ve etkinleştirin:
    ```bash
    python -m venv venv
    source venv/bin/activate  # Windows için: venv\Scripts\activate
    ```
4. Gereksinimleri yükleyin:
    ```bash
    pip install -r requirements.txt
    ```
5. Veritabanı yapılandırmasını yapın ve veritabanını oluşturun (bu adım, uygulamanın yapılandırma dosyalarına bağlıdır).
6. Uygulamayı başlatın:
    ```bash
    python app.py
    ```
7. Web tarayıcınızda `http://127.0.0.1:5000` adresini ziyaret ederek uygulamanızı görüntüleyin.
   
## Kullanım
- Ana sayfada, mevcut quizleri görebilirsiniz.
- Bir quiz seçin ve soruları cevaplayın.
- Quiz tamamlandığında, puanınızı göreceksiniz.

## İletişim
Sorularınız veya geri bildirimleriniz varsa, lütfen bana begumgocerr@gmail.com adresinden ulaşın.
