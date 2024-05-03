--= Consultas da proposta feita no curso =--

-- 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM Filmes;
GO

-- 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;
GO

-- 3: Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
GO

-- 4: Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;
GO

-- 5: Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;
GO

-- 6: Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao;
GO

-- 7: Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;
GO

-- 8: Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';
GO

-- 9: Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
GO

-- 10: Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;
GO

-- 11: Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos G ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio';
GO

-- 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, A.PrimeiroNome, A.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores A ON ef.IdAtor = A.Id;
GO

-- Murilo Iachitzke --