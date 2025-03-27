# mtcars veri setini yükle
data(mtcars)

# Özel Özet Fonksiyonu Yazın
my_summary_stats <- function(vec) {
  summary_list <- list(
    Ortalama = mean(vec),
    Medyan = median(vec),
    Standart_Sapma = sd(vec),
    Minimum = min(vec),
    Maksimum = max(vec)
  )
  return(summary_list)
}

# Fonksiyonu Döngü Kullanarak Uygulama
cat("Fonksiyonu Döngü Kullanarak Uygulama:\n")
for (col_name in colnames(mtcars)) {
  cat("\n➡️", col_name, ":\n")
  cat("------------------------------\n")
  result <- my_summary_stats(mtcars[[col_name]])
  print(result)
}

# apply ile Alternatif Bir Yaklaşım
cat("\n apply ile Alternatif Yaklaşım:\n")
summary_results <- apply(mtcars, 2, my_summary_stats)
print(summary_results)


install.packages("dslabs")  # Bir kereye mahsus

# dslabs paketinden na_example veri setiyle çalışma
library(dslabs)

data("na_example")

# NA sayısı
cat(" NA Sayısı:", sum(is.na(na_example)), "\n")

# NA'leri 2025 ile değiştir
cleaned_data <- ifelse(is.na(na_example), 2025, na_example)

# Yeni veri setinde eksik değer var mı?
cat("Kalan NA Sayısı:", sum(is.na(cleaned_data)), "\n")

# 2025 değeri kaç kez geçti?
cat("2025 Degeri Sayısı:", sum(cleaned_data == 2025), "\n")
