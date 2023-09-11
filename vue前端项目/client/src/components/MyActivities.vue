<template>
	<!-- 我的活动 -->
	    <div class="myactivities">
	        <ul class="myactivities-tabulation">
	            <li><a href="#">我的活动</a></li>
	        </ul>
	        <div class="myactivities-bulk">
	            <div class="myactivities-bulk-top">
	                <h3>我的活动</h3>
	            </div>
	            <ul>
	                <li>
	                    <h4>中华优秀传统文化“梨园雅韵”京剧之夜</h4>
	                    <div class="time">活动时间：2023-09-05 18:00-20:00</div>
	                    <div class="state"><strong>已通过</strong></div>
	                </li>
	                <li>
	                    <h4>纷呈运动趁年少，不负好春光</h4>
	                    <div class="time">活动时间：2023-09-05 18:00-20:00</div>
	                    <div class="state"><strong>未通过</strong></div>
	                </li>
	                <li>
	                    <h4>亲近传统文化，弘扬时代新风</h4>
	                    <div class="time">活动时间：2023-09-05 18:00-20:00</div>
	                    <div class="state"><strong>未通过</strong></div>
	                </li>
	            </ul>
	            <div class="myactivities-bulk-bottom">
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
	.myactivities {
	    width: 1200px;
	    height: 700px;
	    margin: 0 auto;
	}
	
	.myactivities .myactivities-tabulation {
	    width: 220px;
	    height: 75px;
	    display: inline-block;
	    list-style: none;
	    text-align: center;
	    line-height: 50px;
	    border: 1px solid #e9e9ee;
	    position: relative;
	}
	
	.myactivities .myactivities-tabulation li {
	    width: 180px;
	    margin: 0 auto;
	    border-bottom: 2px solid #e9e9ee;
	}
	
	.myactivities .myactivities-tabulation li a {
	    font-size: 25px;
	    font-family: 仿宋;
	    color: #fa730d;
	    text-decoration: none;
	}
	
	.myactivities .myactivities-bulk {
	    width: 940px;
	    height: 700px;
	    position: relative;
	    top: -75px;
	    left: 300px;
	}
	
	.myactivities .myactivities-bulk .myactivities-bulk-top {
	    width: 940px;
	    height: 49px;
	    background-color: #fff;
	    line-height: 50px;
	    border-bottom: 1px solid #a1a1a1;
	}
	
	.myactivities .myactivities-bulk .myactivities-bulk-top h3 {
	    width: 100px;
	    height: 50px;
	    color: #616161;
	    text-align: center;
	    border-bottom: 3px solid #fa730d;
	}
	
	.myactivities .myactivities-bulk ul {
	    width: 940px;
	    height: 550px;
	    background-color: #fff;
	    position: relative;
	    top: 40px;
	}
	
	.myactivities .myactivities-bulk ul li {
	    width: 940px;
	    height: 70px;
	    list-style: none;
	    padding-left: 5px;
	    padding-top: 12px;
	}
	
	.myactivities .myactivities-bulk ul li .time {
	    display: inline-block;
	    position: relative;
	    top: -10px;
	}
	
	.myactivities .myactivities-bulk ul li .state {
	    display: inline-block;
	    font-size: 32px;
	    color: #fa730d;
	    position: relative;
	    top: -20px;
	    left: 560px;
	}
	
	.myactivities .myactivities-bulk ul li h4 {
	    width: 500px;
	}
	
	.myactivities .myactivities-bulk ul li:nth-child(2n-1){
	    background-color: #eaeaeafb;
	}
	
	.myactivities .myactivities-bulk .myactivities-bulk-bottom {
	    width: 940px;
	    height: 36px;
	    font-size: 12px;
	    color: #222;
	    position: relative;
	    top: 65px;
	    line-height: 36px;
	}
	
	.myactivities .myactivities-bulk .myactivities-bulk-bottom .up {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.myactivities .myactivities-bulk .myactivities-bulk-bottom .leaf {
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
	
	.myactivities .myactivities-bulk .myactivities-bulk-bottom .down {
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