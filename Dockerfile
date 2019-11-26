# Based Image yang akan kita gunakan
FROM 

# Menentukan folder di dalam container dimana kita akan menyimpan code kita
WORKDIR 

# Setting environment yang dibutuhkan
ENV 


# Memindahkan file dari computer kita ke dalam container
# Copy yang pertama hanya akan menambahkan package.json
# dan package-lock
COPY 

# Menjalankan npm install untuk menginstall dependensi
# Menghilangkan cache yang ada
RUN 

# Mengkopi seluruh file yang ada di dalam folder host 
# Ke folder di container
# Kita tidak akan memindahkan node_modules karena node_modules
# Sudah dibuat di container ketika menjalankan npm install
COPY 

# Menjalankan command untuk memulai server express
CMD 