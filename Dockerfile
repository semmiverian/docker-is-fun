# Based Image yang akan kita gunakan
FROM node:12-alpine

# Menentukan folder di dalam container dimana kita akan menyimpan code kita
WORKDIR /usr/local/application

# Setting environment yang dibutuhkan
ENV PORT=3000


# Memindahkan file dari computer kita ke dalam container
# Copy yang pertama hanya akan menambahkan package.json
# dan package-lock
COPY package.json package-lock.json ./

# Menjalankan npm install untuk menginstall dependensi
# Menghilangkan cache yang ada
RUN npm install && npm cache clean --force 

## Install nodemon
RUN npm install -g nodemon

RUN apk add --no-cache tini

WORKDIR /usr/local/application/code

# Mengkopi seluruh file yang ada di dalam folder host 
# Ke folder di container
# Kita tidak akan memindahkan node_modules karena node_modules
# Sudah dibuat di container ketika menjalankan npm install
COPY . .

ENTRYPOINT [ "/sbin/tini", "--"]

# Menjalankan command untuk memulai server express
CMD ["node", "app.js"]