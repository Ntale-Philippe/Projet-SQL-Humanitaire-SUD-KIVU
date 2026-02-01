
-- PROJET : Analyse des Distributions Humanitaires - Sud-Kivu


-- Création des tables
CREATE TABLE projets (
    id_projet INT PRIMARY KEY,
    nom_projet VARCHAR(100),
    secteur VARCHAR(50),
    budget_alloue DECIMAL(15,2)
);

CREATE TABLE sites_deplacements (
    id_site INT PRIMARY KEY,
    nom_site VARCHAR(100),
    territoire VARCHAR(50)
);

CREATE TABLE distributions (
    id_distribution INT PRIMARY KEY,
    id_projet INT,
    id_site INT,
    quantite_distribuee INT,
    cout_operationnel DECIMAL(10,2),
    FOREIGN KEY (id_projet) REFERENCES projets(id_projet),
    FOREIGN KEY (id_site) REFERENCES sites_deplacements(id_site)
);

-- Insertion des données de test
INSERT INTO projets (id_projet, nom_projet, secteur, budget_alloue) VALUES
(1, 'Urgence Santé Kalehe', 'Santé', 250000.00),
(2, 'Réponse WASH Minova', 'WASH', 180000.00),
(3, 'Nutrition Clinique Bukavu', 'Santé', 320000.00);

INSERT INTO sites_deplacements (id_site, nom_site, territoire) VALUES
(101, 'Site A - Kalehe Centre', 'Kalehe'),
(102, 'Site B - Minova Gare', 'Kalehe'),
(103, 'Site C - Bagira', 'Bukavu');

INSERT INTO distributions (id_distribution, id_projet, id_site, quantite_distribuee, cout_operationnel) VALUES
(1, 1, 101, 1250, 450.00),
(2, 2, 102, 800, 320.00),
(3, 1, 102, 1100, 510.00),
(4, 3, 103, 2100, 890.00);