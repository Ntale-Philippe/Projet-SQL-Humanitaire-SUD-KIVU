
--ÉVALUATION SQL DU 01/02/2026
--Structure & Données : Fournies par l'Expert
   



-- QUESTION 1 : 
-- "Affiche le nom du projet, le nom du site et la quantité distribuée, 
-- mais seulement pour les distributions supérieures à 1000 unités."

-- MA RÉPONSE :
SELECT p.nom_projet, s.nom_site, d.quantite_distribuee
FROM distributions d
JOIN projets p ON d.id_projet=p.id_projet
JOIN sites_deplacements s ON d.id_site=s.id_site
WHERE d.quantite_distribuee >1000;


-- QUESTION 2 : 
-- "Calcule la moyenne du coût opérationnel pour le secteur 'Santé' uniquement."

-- MA RÉPONSE :
SELECT p.secteur,AVG(cout_operationnel) as coutmoyen
From distributions d
join projets p ON d.id_projet=p.id_projet
WHERE secteur='Santé'
GROUP BY secteur;


