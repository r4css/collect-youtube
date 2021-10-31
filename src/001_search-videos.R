# Install Packages (Cukup 1 Kali)
install.packages(c("tuber", "tidyverse"))

# Load Packages
library(tuber)
library(tidyverse)

# Masukkan Google API
yt_oauth(
  "USER-ID",
  "TOKEN"
)

# Mencari daftar video, Ganti term dengan keyword yang ingin dicari
df_video <- yt_search(term = "Gojek")

# Simpan data daftar video dengan format .csv
write_csv(df_video, "data/data-video.csv")
