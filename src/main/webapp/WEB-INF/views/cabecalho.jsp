<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<header id="layout-header">
	<div class="clearfix container">
		<a href="/" id="logo"> </a>
		<div id="header-content">
			<nav id="main-nav">
				<ul class="clearfix">
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${s:mvcUrl('PC#listar').build()}" rel="nofollow">
								Listagem de Produtos </a></li>
						<li><a href="${s:mvcUrl('PC#form').build()}" rel="nofollow">
								Cadastro de Produtos </a></li>
					</security:authorize>
					<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">
							Seu carrinho (${carrinhoCompras.quantidade}) </a></li>
					<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">
							Sobre nós </a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<nav class="categories-nav">
	<ul class="container">
		<li class="category"><a href="http://www.casadocodigo.com.br">Home</a></li>
		<li class="category"><a href="/collections/livros-de-agile">
				Agile </a></li>
		<li class="category"><a href="/collections/livros-de-front-end">
				Front End </a></li>
		<li class="category"><a href="/collections/livros-de-games">
				Games </a></li>
		<li class="category"><a href="/collections/livros-de-java">
				Java </a></li>
		<li class="category"><a href="/collections/livros-de-mobile">
				Mobile </a></li>
		<li class="category"><a
			href="/collections/livros-desenvolvimento-web"> Web </a></li>
		<li class="category"><a href="/collections/outros"> Outros </a></li>
	</ul>
</nav>