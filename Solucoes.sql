-- 1 
SELECT
	Nome,
	Ano
FROM Filmes

-- 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
	ANO,
	COUNT(*) as Quantidade
FROM Filmes
GROUP BY ANO
ORDER BY Quantidade desc

--8
SELECT
*
FROM Atores
WHERE Genero = 'M'

--9
SELECT
*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Nome,
	Genero
FROM  FilmesGenero
INNER JOIN Filmes
ON IdFilme = Filmes.Id
INNER JOIN Generos
ON IdGenero = Generos.Id

--11 
SELECT
	Nome,
	Genero
FROM  FilmesGenero
INNER JOIN Filmes
ON IdFilme = Filmes.Id
INNER JOIN Generos
ON IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	Filmes.Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM ElencoFilme
INNER JOIN Filmes
ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
ON Atores.Id = ElencoFilme.IdAtor
