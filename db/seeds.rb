require 'faker'
require 'open-uri'

puts "cleaning seed"
User.destroy_all
Organisme.destroy_all
Formation.destroy_all
Bloc.destroy_all
puts "Cleaning done"

organisme1 = { nom: "Centre Inffo" }
organisme2 = { nom: "Onlineformapro" }
organisme3 = { nom: "Apec" }
organisme4 = { nom: "Pole Emploi" }
organisme5 = { nom: "Cegos" }
[organisme1, organisme2, organisme3, organisme4, organisme5].each do |hash|
  organisme = Organisme.create!(
    nom: hash[:nom]
  )
  puts "Created #{organisme.nom}"
end

user = User.create!(
  prenom: "Etienne",
  nom: "Pagenaud",
  email: "e.pagenaud@gmail.com",
  password: "password"
)

20.times do
  prenom = Faker::Name.first_name
  nom = Faker::Name.last_name
  email = Faker::Internet.email(name: "#{prenom} #{nom}")
  password = 'password'

  user = User.create!(
    prenom: prenom,
    nom: nom,
    email: email,
    password: password,
  )
  puts "Created #{user.prenom}"
end

webdev = { title: "Développement web", duree: 4, periode: "mois", description: "Le concepteur développeur d'applications conçoit et développe des services numériques à destination des utilisateurs en respectant les normes et standards reconnus par la profession et en suivant l'état de l'art de la sécurité informatique à toutes les étapes. La connaissance du métier du client pour lequel il réalise l'application peut être demandée. Il prend en compte les contraintes économiques, en termes de coûts et de délais, les exigences de sécurité propres à son domaine d'intervention. Il peut aussi être amené, à la demande du client, à intégrer les principes liés à la conception responsable de services numériques.", code_rncp: 'RNCP31114'}
ui = { title: "Concepteur Designer UI", duree: 3, periode: "semaines", description: "Le concepteur designer UI détermine comment un utilisateur interagit avec une interface homme-machine. Pour cela, il conçoit et réalise des outils de communication numériques adaptés à différents supports de publication et de communication, en tenant compte de l'utilisateur, des standards, de l'accessibilité, de l'ergonomie et de la bonne visibilité du produit.", code_rncp: "RNCP35634"}
misenpage = { title: "Infographiste Metteur en Page", duree: 1, periode: "mois", description: "L'infographiste metteur en page est un professionnel du secteur de la communication graphique et multimédia dont les activités sont associées à la chaîne graphique de production. Ses principales missions sont la transformation de la commande client en visuels et la réalisation de supports de communication répondant à une stratégie qui intègre l'ensemble des formats numériques dans son processus de flux de production. Il réalise des supports de communication de différents formats, tailles, orientations et pour différentes plates-formes. Il prépare la réalisation de supports de communication, contribue à leur conception et participe à leur diffusion. Il assure une veille technique, technologique et concurrentielle pour augmenter sa productivité, sa technicité et sa capacité de conseil en se tenant informé des dernières tendances graphiques.", code_rncp: "RNCP1267"}
secretairecomptable = { title: "Secrétaire Comptable", duree: 2, periode: "semaines",description: "L'emploi de secrétaire comptable est à la jonction des métiers de secrétaire et de comptable. Il se caractérise par une combinaison d'activités relevant de ces deux domaines au sein du même emploi. Le secrétaire comptable exerce des activités d'assistanat administratif et logistique auprès d'un responsable hiérarchique, souvent le chef d'entreprise, ou d'une équipe. Il effectue le suivi administratif des fonctions commerciales et ressources humaines. Sur le champ de la comptabilité et de la paie, il contrôle et comptabilise les documents commerciaux, sociaux et fiscaux (TVA) de l'entreprise et réalise les paies et les déclarations sociales courantes.", code_rncp: "RNCP1212"}
accueil = { title: "Employé administrateur d'accueil", duree: 2, periode: "mois", description: "L'employé administratif et d'accueil (EAA) exerce ses fonctions avec une grande polyvalence et joue un rôle essentiel dans le quotidien d'un service ou d'une structure. Par sa position physique au sein de l'entreprise, il véhicule l'image de la structure et facilite son fonctionnement. Il fluidifie la diffusion des informations et travaille dans un esprit de service avec les différents collaborateurs et les interlocuteurs externes. La dimension relationnelle de la fonction est de ce fait essentielle.", code_rncp: "RNCP17791"}
socio = { title: "Secrétaire Assistant Médico-Social", duree: 5, periode: "semaines", description: "Le secrétaire assistant médico-social assure, au sein des structures sanitaires, médico-sociales ou sociales, l'accueil et la prise en charge des patients et des usagers, la planification des activités du service, le traitement et le suivi administratif des dossiers, la coordination des opérations liées au parcours des patients ou des usagers.", code_rncp: "RNCP5863"}
tech = { title: "Technicien d'Etudes du Bâtiment en Dessin de Projet", duree: 6, periode: "semaines", description: "Le technicien d'études du bâtiment en dessin de projet est chargé, au sein des agences d'architecture, de maîtrise d'œuvre ou de construction de maisons individuelles, de la réalisation des documents graphiques et de la modélisation numérique des projets de bâtiment, en respectant les contraintes économiques et règlementaires.", code_rncp: "RNCP34660"}

[webdev, ui, misenpage, secretairecomptable, accueil, socio, tech].each do |hash|
  formation = Formation.create!(
    title: hash[:title],
    duree: hash[:duree],
    periode: hash[:periode],
    organisme: Organisme.all.sample,
    description: hash[:description],
    code_rncp: hash[:code_rncp],
    user: User.all.sample
  )
  puts "Created #{formation.title}"
end

puts "End of the seed"
