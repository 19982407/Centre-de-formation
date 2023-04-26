SELECT count(*)
from session;

/SELECT Session.*
FROM Session
WHERE id_apprenant = 'id_apprenant'
ORDER BY date_debut ASC;

/SELECT * FROM session where id_formateur='1';

/SELECT *
from session natural JOIN apprenant 
where id_formateur='1';

-- 8
SELECT *
FROM Formateur
WHERE Id_formateur NOT IN (
SELECT DISTINCT Id_formateur
FROM session
WHERE Date_DEBUT <= '2023-05-01' AND DATE_FIN >= '2023-05-15'
);
-- 10
SELECT Formation.Catégorie_Formation, COUNT(session.id_session) AS Nb_sessions
FROM Formation
JOIN session ON Formation.Id_FORMATION = '1'
GROUP BY Formation.Catégorie_Formation;

-- 1 
SELECT *
FROM session
WHERE session.DATE_FIN < [Date_DEBUT de la session donnée] OR session.Date_DEBUT > [DATE_FIN de la session donnée]

--2
SELECT session.id_session, session.Date_DEBUT, session.DATE_FIN, session.nombre_MAX - COUNT(Apprenant.id_apprenant) AS places_disponibles, Formation.Nom_FORMATION
FROM session
INNER JOIN Formation ON session.Id_FORMATION = Formation.Id_FORMATION
LEFT JOIN Apprenant ON session.id_session = Apprenant.id_session
WHERE session.DATE_FIN >= CURRENT_DATE()
GROUP BY session.id_session
HAVING places_disponibles > 0