use cadastro;

/*Uma lista com o nome de todos os gafanhotos Mulheres.*/

select nome from gafanhotos g 
where sexo = 'F';

/*Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.*/

select * from gafanhotos g 
where nascimento between '2000/1/1/' and '2015/10/31/';

/*Uma lista com o nome de todos os homens que trabalham como programadores.*/

select nome, profissao from gafanhotos g 
where sexo = 'M' and profissao = 'programador';

/* Uma lista com os dados de todas as mulheres que nasceram no 
 Brasil e que têm seu nome iniciando com a letra J.*/

select * from gafanhotos g 
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/* Uma lista com o nome e nacionalidade de todos os 
 homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.*/

select nome from gafanhotos g 
where sexo = 'M' and nome like '%silva%' and nacionalidade
<> 'Brasil' and peso < '100kg';

/*Qual é a maior altura entre gafanhotos Homens que moram no Brasil?*/

select max(altura) from gafanhotos g 
where sexo = 'M' and nacionalidade = 'Brasil';

/*Qual é a média de peso dos gafanhotos cadastrados?*/

select avg(peso) from gafanhotos g ;

/* Qual é o menor peso entre os gafanhotos Mulheres 
 que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?*/

select min(peso) from gafanhotos g 
where sexo = 'F' and nacionalidade not like 'Brasil' 
and nascimento between '1990/01/01' and '2000/10/31';

/* Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?*/

select count(altura) from gafanhotos g 
where sexo = 'F' and altura > '1.90';



/*Selects da aula:*/

select carga, count(nome) from cursos c 
group by carga
order by carga desc;

select distinct carga from cursos c 
order by carga desc;

select * from cursos c ;

SELECT carga, count(nome) FROM cursos
GROUP BY carga
Having count(nome) > 3;

select carga, count(nome) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
