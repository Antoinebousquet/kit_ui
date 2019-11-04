# EVENTBRITE : DEVISONS GAIEMENT !

## The Hacking Project - Bootcamp Fullstack Web
### Semaine 6, jour JOUR 2.

> 

This app aims to be a simplified mockup of [Eventbrite](https://www.eventbrite.com). It was built as a part of a Webdevelopment course.

***

## Fonctionnalités présentes
* Base de données
  * modèles User, Event et Attendance
  * avec leurs associations et validations
* Envoi automatique d'emails
  * email de bienvenue à la création d'un utilisateur
  * email de notification (pour l'administrateur de l'évènement) à la création d'une réservation

***

## Installation
### Voir une démo de l'application en 'production'
Ça se passe sur [HEROKU](https://gaael-eventbrite-v2.herokuapp.com/).

### Réaliser des tests en local
Cloner le repository : 
~~~bash
$ git clone https://framagit.org/gaael/thp-07-02-eventbrite-v2.git
~~~
Ou télécharger sa version compressée puis l'extraire.

Se placer dans le dossier `thp-07-02-eventbrite-v2-master`. Installer les gemmes nécessaires (via *Bundler*)
~~~bash
$ cd path/to/thp-07-02-eventbrite-v2-master
$ bundle install
~~~

Construire la BDD
~~~bash
$ rails db:create db:migrate
~~~

Remplir la BDD à partir de `seeds.rb`
~~~bash
$ rails db:seed
~~~

#### Pour voir le front-end en local
Lancer le `serveur rails`
~~~bash
$ rails server
~~~

Visiter le site en local :\
[localhost sur le port 3000](http://localhost:3000/)

#### Pour voir le back-end en local
Lancer la `rails console`
~~~bash
$ rails console
~~~

***

## Configuration requise
Version de **Rails** :
~~~bash
$ rails-v
Rails 5.2.3
~~~

Version de **Ruby** :
~~~bash
$ ruby -v
ruby 2.5.1
~~~

Version de **Bundler** :
~~~bash
$ bundle -v
Bundler version 2.0.2
~~~

Gemmes utilisées (source : *Gemfile*) :\
Gemme décommentée du **Gemfile** de Rails :
~~~ruby
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
~~~

Gemmes ajoutée au groupe `development` du **Gemfile** de Rails :
~~~ruby
group :development do
  ...
  # Enables 'realistic' and 'effortless' seed
  gem 'faker'
  # Displays nice tables in Rails Console
  gem 'table_print'
  # easier-to-read error messages
  gem 'better_errors'
  gem 'binding_of_caller'
  # previews emails in browser instead of actually sending them
  gem "letter_opener"
  # managing credentials
  gem 'dotenv-rails'
end
~~~

Gemmes ajoutées au **Gemfile** de Rails :
~~~ruby
# jQuery is required for Bootstrap
gem 'jquery'
# Bootstrap for nicer layouts
gem 'bootstrap', '~>v4.0.0'
~~~

***

## Testing
None yet.

***

## Historique des versions

* version 1.00 : repo init

***

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)


## Meta
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.