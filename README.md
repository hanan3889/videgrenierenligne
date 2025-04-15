# 🧺 VideGrenierEnLigne — Application Local

Ce projet est une application **VideGrenierEnLigne** fonctionnant sur un serveur local avec **XAMPP** et une gestion des assets via **npm**. Il ne repose sur aucun framework comme Laravel et peut être facilement lancé avec un VirtualHost.

---

## ✅ Prérequis

- [XAMPP](https://www.apachefriends.org/index.html) installé (avec Apache et PHP)
- [Node.js + npm](https://nodejs.org/)
- Accès administrateur pour modifier les fichiers système (fichier `hosts`)

---

## 📁 Installation

### 1. Cloner ou copier le projet

Copiez le projet dans le dossier `htdocs` de votre installation XAMPP, par exemple :

```bash
cd C:\xampp\htdocs\videgrenierenligne

---



Ouvrir un terminal dans **VS Code** ou un terminal classique et allez dans le répertoire du projet :

```bash
cd C:\xampp\htdocs\videgrenierenligne
```
### 2. Installer les dépendances

`npm install` &
`npm install sass --save-dev`

### 3. Créer la BDD sur phpmyadmin `videgrenierenligne`

faire un import du fichier import.sql qui se trouve dans le dossier sql

### 4. Configuration du VirtualHost avec XAMPP

Ouvrez le fichier httpd-vhosts.conf 

C:\xampp\apache\conf\extra\httpd-vhosts.conf

1. Ajouter la configuration suivante :
<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs/Laravel_projects/videgrenierenligne/public"
    ServerName videgrenierenligne.local

    <Directory "C:/xampp/htdocs/Laravel_projects/videgrenierenligne/public">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

2. Modifier le fichier hosts de Windows
C:\Windows\System32\drivers\etc\hosts
Ajoutez la ligne suivante à la fin du fichier :


127.0.0.1 videgrenierenligne.local

3. Redémarrer Apache via XAMPP

### 5. 🚀 Lancer l'application en local 

faire `php -S videgrenierenligne.local` ou utiliser l'extension vscode Live server
et se rendre 
http://videgrenierenligne.local 
