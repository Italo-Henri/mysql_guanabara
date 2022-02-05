/* 1-Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/

select profissao, count(profissao) from gafanhotos g 
group by profissao ;

/* 2-Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005*/

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */

select nacionalidade, count(*) from gafanhotos g 
where nacionalidade <> 'Brasil'
group by nacionalidade
having count(*) >= 3;

/* 4-Uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/

select avg(altura) from gafanhotos g; 

select * from gafanhotos g 
where peso > '100'
group by altura
having avg(altura) > 1.66;

