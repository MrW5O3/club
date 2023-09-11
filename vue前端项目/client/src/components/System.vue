<template>
	<!-- 规章制度 -->
	    <div class="system">
	        <ul class="system-tabulation">
	            <li><a href="#">规章制度</a></li>
	        </ul>
	        <div class="system-bulk">
	            <div class="system-bulk-top">
	                <h3>规章制度</h3>
	            </div>
	            <ul>
	                <li><router-link to="/Systemcontent">学生社团管理条例</router-link></li>
	                <li><a href="#">制度一</a></li>
	                <li><a href="#">制度三</a></li>
	                <li><a href="#">制度四</a></li>
	                <li><a href="#">制度五</a></li>
	            </ul>
	            <div class="system-bulk-bottom">
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
	.system {
	    width: 1200px;
	    height: 700px;
	    margin: 0 auto;
	}
	
	.system .system-tabulation {
	    width: 220px;
	    height: 75px;
	    display: inline-block;
	    list-style: none;
	    text-align: center;
	    line-height: 50px;
	    border: 1px solid #e9e9ee;
	    position: relative;
	}
	
	.system .system-tabulation li {
	    width: 180px;
	    margin: 0 auto;
	    border-bottom: 2px solid #e9e9ee;
	}
	
	.system .system-tabulation li a {
	    font-size: 25px;
	    font-family: 仿宋;
	    color: #fa730d;
	    text-decoration: none;
	}
	
	.system .system-bulk {
	    width: 940px;
	    height: 700px;
	    position: relative;
	    top: -75px;
	    left: 300px;
	}
	
	.system .system-bulk .system-bulk-top {
	    width: 940px;
	    height: 49px;
	    background-color: #fff;
	    line-height: 50px;
	    border-bottom: 1px solid #a1a1a1;
	}
	
	.system .system-bulk .system-bulk-top h3 {
	    width: 100px;
	    height: 50px;
	    color: #616161;
	    text-align: center;
	    border-bottom: 3px solid #fa730d;
	}
	
	.system .system-bulk ul {
	    width: 940px;
	    height: 550px;
	    background-color: #fff;
	    position: relative;
	    top: 40px;
	}
	
	.system .system-bulk ul li {
	    width: 940px;
	    height: 55px;
	    line-height: 52px;
	    list-style: none;
	    padding-left: 5px;
	}
	
	.system .system-bulk ul li:nth-child(2n-1){
	    background-color: #eaeaeafb;
	}
	
	.system .system-bulk ul a {
	    text-decoration: none;
	    font-size: 18px;
	    color: #746a6a;
	}
	
	.system .system-bulk ul a:hover {
	    color: #f4e21db8;
	}
	
	.system .system-bulk .system-bulk-bottom {
	    width: 940px;
	    height: 36px;
	    font-size: 12px;
	    color: #222;
	    position: relative;
	    top: 65px;
	    line-height: 36px;
	}
	
	.system .system-bulk .system-bulk-bottom .up {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.system .system-bulk .system-bulk-bottom .leaf {
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
	
	.system .system-bulk .system-bulk-bottom .down {
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