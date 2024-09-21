# Wybór bazowego obrazu z Node.js
FROM node:14

# Ustawienie katalogu roboczego wewnątrz kontenera
WORKDIR /usr/src/app

# Kopiowanie pliku package.json i package-lock.json do kontenera
COPY package*.json ./

# Instalacja zależności
RUN npm install

# Kopiowanie reszty aplikacji do kontenera
COPY . .

# Ustawienie zmiennej środowiskowej
ENV PORT=3000

# Otworzenie portu aplikacji
EXPOSE 3000

# Określenie komendy startowej dla kontenera
CMD ["node", "server.js"]
