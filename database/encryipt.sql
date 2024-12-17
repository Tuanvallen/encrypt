-- Hapus database jika sudah ada
DROP DATABASE IF EXISTS encryption_app;

-- Membuat database baru
CREATE DATABASE encryption_app;
USE encryption_app;

-- Table untuk RSA Encryption dan Decryption
CREATE TABLE rsa_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    original_message TEXT NOT NULL,
    encrypted_message TEXT NOT NULL,
    decrypted_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table untuk AES Encryption dan Decryption
CREATE TABLE aes_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    original_message TEXT NOT NULL,
    encrypted_message TEXT NOT NULL,
    iv TEXT NOT NULL,
    decrypted_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table untuk SHA-256 Hashing
CREATE TABLE sha256_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    original_message TEXT NOT NULL,
    hashed_message VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Contoh data untuk RSA
INSERT INTO rsa_data (original_message, encrypted_message, decrypted_message) 
VALUES ('Hello RSA', 'EncryptedData123', 'Hello RSA');

-- Contoh data untuk AES
INSERT INTO aes_data (original_message, encrypted_message, iv, decrypted_message) 
VALUES ('Hello AES', 'EncryptedData456', 'IVSample123', 'Hello AES');

-- Contoh data untuk SHA-256
INSERT INTO sha256_data (original_message, hashed_message) 
VALUES ('Hello SHA-256', 'b94d27b9934d3e08a52e52d7da7dabfadecc61ef');

-- Menampilkan semua data sebagai uji coba
SELECT * FROM rsa_data;
SELECT * FROM aes_data;
SELECT * FROM sha256_data;
