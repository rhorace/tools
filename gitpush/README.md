# 🚀 GitPush — Automatiser ses commits Git

**GitPush** est un petit script Bash qui permet d'enregistrer et d'envoyer ses modifications sur GitHub en une seule commande.

Il exécute automatiquement :

```bash
git add .
git commit -m "commit_DATE_HEURE"
git push
```

Chaque commit reçoit un message contenant la date et l'heure de son exécution.

## 📦 Installation

**1. Télécharger le script `gitpush.sh`**, puis ouvrir un terminal dans le dossier où il se trouve.

**2. Copier le script dans `~/bin` :**

```bash
mkdir -p ~/bin
cp gitpush.sh ~/bin/gitpush
chmod +x ~/bin/gitpush
```

**3. Ajouter `~/bin` au PATH si nécessaire :**

```bash
export PATH="$HOME/bin:$PATH"
```

Pour conserver cette configuration après un redémarrage, ajouter cette ligne au fichier `~/.bashrc`, puis exécuter :

```bash
source ~/.bashrc
```

## ▶️ Utilisation

Se placer dans un projet Git :

```bash
cd mon_projet
```

Exécuter simplement :

```bash
gitpush
```

Le script va automatiquement :

1. Ajouter les modifications avec `git add .`.
2. Créer un commit avec la date et l'heure actuelles.
3. Envoyer les commits vers le dépôt distant avec `git push`.

**Exemple de message de commit :**

```text
commit_2026-11-17_21-30-45
```

## ⚠️ Remarques

- Git doit être installé et configuré.
- Le projet doit être un dépôt Git disposant d'une destination de push configurée.
- Si aucune modification n'est détectée, aucun nouveau commit n'est créé.
- Le script n'effectue pas automatiquement de `git pull`.
- Pensez à vérifier les fichiers ajoutés avant de lancer le script : `git add .` ajoute toutes les modifications non ignorées du dossier courant et de ses sous-dossiers.

## 📋 Compatibilité

Compatible avec **Linux** et les environnements disposant de Bash et Git.

## 📄 Licence

Libre à vous de modifier et d'adapter ce petit script à vos besoins !
