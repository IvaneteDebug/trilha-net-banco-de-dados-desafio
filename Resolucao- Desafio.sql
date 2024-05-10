--1
SELECT 
   Nome,
   Ano
FROM Filmes 

--2
SELECT 
   Nome,
   Ano, 
   Duracao
FROM Filmes 
ORDER BY Ano ASC

--3
SELECT Nome,
       Ano,
	   Duracao
FROM Filmes
WHERE Id = 28

--4
SELECT * FROM Filmes Where Ano = 1997

--5
SELECT 
    Nome, 
	Ano,
	Duracao
FROM Filmes WHERE Ano > 2000

--6
SELECT 
   Nome,
   Ano,
   Duracao
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT
     Ano,
COUNT(*) AS Quantidade	
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

--8
SELECT 
     Id,
     PrimeiroNome, 
     UltimoNome,
	 Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT
     Id,
     PrimeiroNome, 
     UltimoNome,
	 Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
       Filmes.Nome AS NomeFilme,
       Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


--11
SELECT 
    Filmes.Nome AS Nome,
	G.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos G ON FilmesGenero.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


--12
SELECT 
    F.Nome AS Nome, 
    A.PrimeiroNome, 
    A.UltimoNome, 
    E.Papel
FROM 
    Filmes F
JOIN 
    ElencoFilme E ON F.Id = E.IdFilme
JOIN 
    Atores A ON E.IdAtor = A.Id