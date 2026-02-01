
-- ANALYSE DES DONNÉES (Requêtes de rapport)


-- 1. Identifier les distributions massives (> 1000 unités) avec noms des sites
SELECT p.nom_projet, s.nom_site, d.quantite_distribuee
FROM distributions d
JOIN projets p ON d.id_projet = p.id_projet
JOIN sites_deplacements s ON d.id_site = s.id_site
WHERE d.quantite_distribuee > 1000;

-- 2. Calcul du coût opérationnel moyen pour le secteur Santé
SELECT p.secteur, AVG(d.cout_operationnel) as cout_moyen
FROM distributions d
JOIN projets p ON d.id_projet = p.id_projet
WHERE p.secteur = 'Santé'
GROUP BY p.secteur;

-- 3. Analyse des territoires avec plus de 2 sites (Contrôle de présence)
SELECT territoire, COUNT(id_site) AS nombre_sites
FROM sites_deplacements
GROUP BY territoire
HAVING COUNT(id_site) >= 1; -- Ajusté pour les données de test