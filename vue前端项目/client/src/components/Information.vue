<template>
	<!-- 资料下载 -->
	    <div class="information">
	        <ul class="information-tabulation">
	            <li><a href="#">资料下载</a></li>
	        </ul>
	        <div class="information-bulk">
	            <div class="information-bulk-top">
	                <h3>资料下载</h3>
	            </div>
	            <ul>
	                <li><a href="#">中华优秀传统文化“梨园雅韵”京剧之夜</a></li>
	                <li><a href="#">资料一</a></li>
	                <li><a href="#">资料三</a></li>
	                <li><a href="#">资料四</a></li>
	                <li><a href="#">资料五</a></li>
	            </ul>
	            <div class="information-bulk-bottom">
	                <span class="up">上页</span>
	                <span class="leaf">1</span>
	                <span class="down">下页</span>
	            </div>
	        </div>
	    </div>
</template>

<script>
</script>

<style>
	.information {
	    width: 1200px;
	    height: 700px;
	    margin: 0 auto;
	}
	
	.information .information-tabulation {
	    width: 220px;
	    height: 75px;
	    display: inline-block;
	    list-style: none;
	    text-align: center;
	    line-height: 50px;
	    border: 1px solid #e9e9ee;
	    position: relative;
	}
	
	.information .information-tabulation li {
	    width: 180px;
	    margin: 0 auto;
	    border-bottom: 2px solid #e9e9ee;
	}
	
	.information .information-tabulation li a {
	    font-size: 25px;
	    font-family: 仿宋;
	    color: #fa730d;
	    text-decoration: none;
	}
	
	.information .information-bulk {
	    width: 940px;
	    height: 700px;
	    position: relative;
	    top: -75px;
	    left: 300px;
	}
	
	.information .information-bulk .information-bulk-top {
	    width: 940px;
	    height: 49px;
	    background-color: #fff;
	    line-height: 50px;
	    border-bottom: 1px solid #a1a1a1;
	}
	
	.information .information-bulk .information-bulk-top h3 {
	    width: 100px;
	    height: 50px;
	    color: #616161;
	    text-align: center;
	    border-bottom: 3px solid #fa730d;
	}
	
	.information .information-bulk ul {
	    width: 940px;
	    height: 550px;
	    background-color: #fff;
	    position: relative;
	    top: 40px;
	}
	
	.information .information-bulk ul li {
	    width: 940px;
	    height: 55px;
	    line-height: 52px;
	    list-style: none;
	    padding-left: 5px;
	}
	
	.information .information-bulk ul li:nth-child(2n-1){
	    background-color: #eaeaeafb;
	}
	
	.information .information-bulk ul a {
	    text-decoration: none;
	    font-size: 18px;
	    color: #746a6a;
	}
	
	.information .information-bulk ul a:hover {
	    color: #f4e21db8;
	}
	
	.information .information-bulk .information-bulk-bottom {
	    width: 940px;
	    height: 36px;
	    font-size: 12px;
	    color: #222;
	    position: relative;
	    top: 65px;
	    line-height: 36px;
	}
	
	.information .information-bulk .information-bulk-bottom .up {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.information .information-bulk .information-bulk-bottom .leaf {
	    width: 20px;
	    height: 20px;
	    background-color: #ff4848;
	    text-align: center;
	    line-height: 18px;
	    border: none;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.information .information-bulk .information-bulk-bottom .down {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
</style>