# the_gossip_project




Le projet

Nous allons commencer aujourd'hui par créer les premières pages :

    La page d'accueil, bien entendu. Cette page d'accueil affichera tous les potins créés
    La page qui présente l'équipe de The Gossip Project, aka toi et ton binome
    La page de contact où tu vas balancer une superbe adresse de contact
    Une page de bienvenue, qui accueille l'utilisateur en fonction du nom passé dans l'URL

Dans la page d'accueil, il sera possible de cliquer sur chaque potin pour en "Voir plus", ce qui aura pour effet d'aller sur la page du potin.

Enfin, puisque c'est toi, nous allons mettre du CSS dans le site, grâce notamment à Bootstrap.
2.1. Les bases de l'application : installation et models

Ce projet te suivra tout au long de cette semaine, mais nous allons te demander de ne pas perdre le rythme des migrations. Ainsi, nous allons te demander de créer une nouvelle application the-gossip-project (avec PostgreSQL), puis d'importer les migrations, models, et seed de l'ancien exercice. Cela permettra de te replonger en douceur dans le bain des bases de données sans te faire perdre trop de temps.
2.2. Les premières pages : présentation et contact

Tu vas devoir créer deux pages :

    Une page team, qui présente l'équipe. Elle sera sur l'uri /team
    Une page contact, qui dit comment contacter l'équipe. Elle sera sur l'uri /contact

Écris un truc simple dans la page, du genre : "voici notre équipe lol mdr 😇❤️😻" pour team par exemple.
2.3. Un peu de mise en forme SVP merci
2.3.1. Du CSS

Histoire de ne pas être trop pouilleux, nous allons te demander d'ajouter du CSS. Comment ajouter du CSS vous me dites ? Simple, va dans app/assets/stylesheets/application.css. Puis écris ton CSS en bas du document. Ce CSS concernera toute ton application.

On va rajouter un peu de css à cette app, en y mettant Bootstrap. La technique la plus simple et la plus réputée consiste à utiliser le CDN, et coller la ou les lignes de CDN dans le head de ton fichier app/views/layout/application.html.erb.
2.3.2. Un header

Ajoute un header dans toutes les pages de ton application. Celui que tu veux.
2.3.3. Des liens

Maintenant, dans le header, mets-y les liens pour les pages team et contact.
2.4. URL cachée, la bienvenue ;)

Cette partie sera un chouilla plus tricky, puisqu'elle te demandera de jouer avec les fameux params. Tu as entendu parler du principe des "Landing Pages", un truc cool avec une page adaptée à la cible potentielle qui viendrait sur ton application. Nous allons donc faire cela.

En gros ce serait une page qui aurait une url du genre welcome/first_name, et quand la personne irait sur cette page, cette personne serait accueillie par un truc du genre :

BIENVENUE first_name ! Ici c'est notre super site de potins, il est chouette, non ?
2.5. Page d'accueil : la liste des potins

La page d'accueil doit souhaiter la bienvenue au visiteur, puis afficher les potins que l'on a en base, en n'affichant que leur author.first_name, et leur title. Évidemment, un lien vers la page d'accueil doit être mis dans le header de l'application.
2.6. Afficher un potin

Allez, dernier élément : la page qui affiche les potins. Chaque potin en base doit avoir une page dédiée, qui affiche les détails de son auteur (avec un lien pour aller sur la page de l'auteur), son title, son content, puis la date de création.

Enfin, sur la page d'accueil qui montre tous les potins, nous pourrons trouver pour chaque potin affiché le lien pour sa page.
2.7. Afficher un utilisateur

Sur chaque page potin, nous avons un lien pour afficher la page profil de son utilisateur. La page profil devra afficher les informations importantes de l'utilisateur.
2.8. Un plus joli display

Pour la page d'accueil, ce serait quand même plus sympa d'avoir les potins dans des cards bootstrap, non ? Puis n'hésite pas à regarder si tu vois d'autres éléments sympas à ajouter dans ton application 😉
