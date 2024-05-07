-- 1. Busca o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2. Busca o nome, ano e duração dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC

-- 3. Busca pelo filme 'de volta para o futuro' trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'DE VOLTA PARA O FUTURO'

-- 4. Busca os filmes lançados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5. Busca os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6. Busca os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 
	AND Duracao < 150
ORDER BY Duracao ASC

-- 7. Busca a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8. Busca os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- 9. Busca os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10. Busca o nome do filme e o gênero
SELECT Filmes.Nome, 
	   Generos.Genero 
FROM Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11. Busca o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, 
	   Generos.Genero 
FROM Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12. Busca o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, 
	   Atores.PrimeiroNome,
	   Atores.UltimoNome,
	   ElencoFilme.Papel
FROM Filmes
	INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

