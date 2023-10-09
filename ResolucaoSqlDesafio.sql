--1
SELECT 
Nome, Ano
FROM Filmes

--2
SELECT 
Nome, Ano,Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Id = 28

--4
SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT
Ano,
COUNT(*) Quantidade
FROM Filmes
WHERE Ano != ''
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M' 

--9
SELECT
Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
F.Nome, G.Genero
FROM FilmesGenero FG
INNER JOIN  Generos G ON FG.IdGenero = G.Id
INNER JOIN Filmes F ON FG.IdFilme = F.Id
ORDER BY G.Genero

--11
SELECT
F.Nome, G.Genero
FROM FilmesGenero FG
INNER JOIN  Generos G ON FG.IdGenero = G.Id
INNER JOIN Filmes F ON FG.IdFilme = F.Id
WHERE G.Id = 10
ORDER BY G.Genero

--12
SELECT 
F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM ElencoFilme EF
INNER JOIN Atores A ON EF.IdAtor = A.Id
INNER JOIN Filmes F ON EF.IdFilme = F.Id
