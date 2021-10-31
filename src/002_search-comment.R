# Install Packages (Cukup 1 Kali)
install.packages(c("tuber", "readr"))

# Load Packages
library(tuber)
library(readr)

# Masukkan Google API
yt_oauth("USER-ID",
         "TOKEN")

# Mendapatkan komentar dari Sebuah Video
df_comment <- get_all_comments("Hh0ioHFszOo")

# Simpan data komentar dengan format .csv
write_csv(df_comment, "data/data-comment.csv")