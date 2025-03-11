select CodigodoFornecedor from Fornecedores

select distinct CodigodoFornecedor from Produtos

select P.NomeDoProduto, F.NomeDaEmpresa from Produtos as P join Fornecedores as F on P.CodigoDoFornecedor = F.CodigoDoFornecedor

select NomeDoProduto, NomeDaEmpresa
from Produtos p
join Fornecedores f 
on p.CodigoDoFornecedor  = f.CodigoDoFornecedor

select p.NomeDoProduto, f.NomeDaEmpresa
from Produtos p
join Fornecedores f
on p.CodigoDoFornecedor = f.CodigoDoFornecedor
order by p.NomeDoProduto

select *
from Produtos P
join Fornecedores F
on P.CodigoDoFornecedor = F.CodigoDoFornecedor

select P.NomeDoProduto, F.NomeDaEmpresa, C.NomeDaCategoria
from Produtos P
join Fornecedores F on P.CodigoDoFornecedor = F.CodigoDoFornecedor
join Categorias C
on P.CodigoDaCategoria = C.CodigoDaCategoria
order by P.NomeDoProduto

select distinct CodigoDoProduto from Detalhes_do_Pedido
order by CodigoDoProduto

select * from Clientes

select distinct CodigoDoCliente From Pedidos

select C.CodigoDoCliente, C.NomeDoContato, P.NumeroDoPedido
from Clientes C
left join Pedidos P
on P.CodigoDoCliente = C.CodigoDoCliente
where P.NumeroDoPedido is null

select * from Pedidos

select C.CodigoDoCliente, C.NomeDoContato, P.NumeroDoPedido
from Clientes C
left join Pedidos P
on P.CodigoDoCliente = C.CodigoDoCliente
where month(P.DataDoPedido) in (4,5,6)

select month(DataDoPedido) from Pedidos