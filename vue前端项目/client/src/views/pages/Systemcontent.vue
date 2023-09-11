<template>
	<div>
		<!-- 规则介绍 -->
		<h2 class="activeity-h2">学生社团管理条例</h2>
		<div class="activeity-time">时间：2023-09-05</div>
		<p class="activeity-nr">第1条 按照教育部和学校的要求，为了进一步规范四川大学学生社团（以下简称学生社团）的管理，
		推动学生社团健康、有序地发展，繁荣校园文化，促进校园精神文明建设，推进学生素质教育，
		依据《宪法》、《教育法》、《高等教育法》以及其他有关法律、法规，及校内有关规定制定本条例。
		</p>
	</div>
</template>

<script>
</script>

<style>
	.head-top {
	    width: 100%;
	    min-width: 1280px;
	    height: 40px;
	    background-color: #fa730d;
	    color: #fff;
	    line-height: 40px;
	}
	
	.wrap {
	    width: 1200px;
	    margin: auto;
	}
	
	.head-top .wrap span {
	    display: inline-block;
	}
	
	.head-top .wrap .hy {
	    display: block;
	    float: right;
	}
	
	.head-top a {
	    color: #fff;
	    text-decoration:none;
	}
	
	.head-top a:hover{
	    color: red;
	}
	
	.head-top .dl {
	    width: 150px;
	    display: inline-block;
	    position: relative;
	    left: 795px;
	}
	
	.head-top .dl .gr {
	    width: 150px;
	    display: inline-block;
	    margin-top: 1px;
	    text-align: center;
	}
	
	.head-top .dl .gr:hover {
	    color: red;
	    visibility: visible;
	}
	
	.head-top .dl .gr:hover+.element {
	    visibility: visible;
	}
	
	.head-top .dl .element:hover {
	    visibility: visible;
	}
	
	.head-top .dl  .element {
	    width: 150px;
	    height: 300px;
	    background-color: #eee8e8;
	    visibility:hidden;
	    display: inline-block;
	    margin: 0 auto;
	}
	
	.head-top .dl  .element p {
	    width: 120px;
	    height: 50px;
	    font-size: 18px;
	    color: #333;
	    text-align: center;
	    line-height: 50px;
	    border-top: 1px dotted #333;
	    display: inline-block;
	    position: relative;
	    left: 15px;
	}
	
	.head-top .dl  .element h4 {
	    width: 150px;
	    height: 30px;
	    font-size: 18px;
	    color: #333;
	    text-align: center;
	    line-height: 30px;
	    margin-top: 5px;
	    display: inline-block;
	}
	
	.head-top .dl  .element p:hover {
	    color: #fa730d;
	}
	
	.head {
	    margin: auto;
	    width: 100%;
	    min-width: 1280px;
	    height: 152px;
	    line-height: 152px;
	}
	
	.head .logo img {
	    height: 71px;
	    margin-top: 35px;
	    margin-bottom: 35px;
	    background-repeat: no-repeat;
	    background-size: contain;
	    display: inline-block;
	}
	
	.logo {
	    width: 1200px;
	    margin: auto;
	}
	
	.head .search {
	    display: block;
	    float: right;
	}
	
	.head .search .ss {
	    width: 280px;
	    height: 38px;
	    font-size: 15px;
	    border: 1px solid #333;
	    border-right: none;
	}
	
	.head .search .submit {
	    margin-top: 1px;
	    margin-left: -7px;
	    width: 50px;
	    height: 38px;
	    text-align: center;
	    background-color: #fa730d;
	    border: 1px solid #333;
	    border-bottom: 2px solid #333;
	    border-left: none;
	}
	
	.navigation {
	    margin: auto;
	    width: 100%;
	    min-width: 1280px;
	    height: 58px;
	    background-color: #efefef;
	}
	
	.navigation .wrap {
	    width: 1200px;
	    margin: auto;
	}
	
	.navigation .wrap li {
	    width: 196px;
	    height: 58px;
	    display: inline-block;
	    text-align: center;
	    line-height: 58px;
	    background-position: 0 center;
	    position: relative;
	    left: -10px;
	}
	
	.navigation .wrap a{
	    width: 201px;
	    height: 58px;
	    text-decoration: none;
	    display: inline-block;
	    color:black;
	    font-size: 18px;
	}
	
	.navigation .wrap a:hover{
	    background-color: #fa730d;
	    color: #fff;
	}
	
	.navigation .wrap .active{
	    background-color: #fa730d;
	    color: #fff;
	}
	
	.picture {
	    width: 1500px;
	    min-width: 1280px;
	    height: 300px;
	    margin: 0 auto;
	    position: relative;
	}
	
	.picture img {
	    width: 1500px;
	    height: 300px;
	    margin: 0 auto;
	}
	
	.activeity-h2 {
	    width: 1200px;
	    height: 82px;
	    font-size: 32px;
	    text-align: center;
	    line-height: 82px;
	    display: block;
	    margin: 0 auto;
	}
	
	.activeity-time {
	    width: 1200px;
	    height: 55px;
	    text-align: center;
	    line-height: 55px;
	    border-bottom: 1px dashed #d5d5d5;
	    margin: 0 auto;
	}
	
	.activeity-nr {
	    width: 1200px;
	    height: 80px;
	    text-indent:2em;
	    margin: 30px auto;
	}
</style>