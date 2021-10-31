# Install Package
install.packages(c("tuber", "tidyverse"))

# Load Package
library(tuber)
library(tidyverse)

# Masukkan Google API
yt_oauth(
  "USER-ID",
  "TOKEN"
)

# Mencari daftar Video, Ganti term dengan keyword yang ingin dicari
df_video <- yt_search(term = "Gojek")

# Simpan data video dengan format .csv
write_csv(df_video, "data/data-video.csv")
