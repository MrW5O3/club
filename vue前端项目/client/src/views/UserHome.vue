<template>
	<div>
		<!-- 页面头部 -->
		<div class="head-top">
			<div class="wrap">
				<span>
					<p>欢迎━(*｀∀´*)ノ亻!</p>
				</span>
				<div class="hy">
					<a href="logon.html">登录</a>
					<span>/</span>
					<a href="#">官方微信</a>
					<span>/</span>
					<a href="#">官方QQ</a> 
				</div>
			</div>
		</div>
		<!-- logo和搜索区域 -->
		<div class="head">
			<div class="logo">
				<img src="../assets/广东东软学院.png" alt="" />
				<div class="search">
					<input type="text" placeholder="请输入搜索内容" class="ss">
					<input value="搜 索" class="submit">
				</div>
			</div>
		</div>
		<!-- 导航栏 -->
		<div class="navigation">
			<div class="wrap">
				<div class="tab">
					<ul class="tab_button">
						<li v-for="(item,index) in tabList" :key="index" :class="{active:currentClass==index}" @click="toggleTab(item.tab_con,index)">{{item.title}}</li>
					</ul>
				</div>
				<div class="tab_con">
					<keep-alive>   <!-- keep-alive 内容会被缓存，不会一直渲染dom元素 -->
						<firstTab :is="currentTab"></firstTab>    <!-- is绑定选中tab的内容 -->
					</keep-alive>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import Index from "../components/Index.vue";
	import Corporation from "../components/Corporation.vue";
	import ClubActivities from "../components/ClubActivities.vue";
	import System from "../components/System.vue";
	import Information from "../components/Information.vue";
	import MyActivities from "../components/MyActivities.vue";
	
	export default{
	    
	    data(){
	
	        return {				
				currentTab: 'Index',  // 默认选中
				currentClass: 0,  // 默认选中按钮样式
				tabList:[
					{
					title: '首页',  // tab文字
					tab_con: 'Index'  ,// tab对应内容块
					},
					{
					title: '活力社团',
					tab_con: 'Corporation'},
					{
					title: '社团活动',
					tab_con: 'ClubActivities',
					},
					{
					title: '规章制度',
					tab_con: 'System',
					},
					{
					title: '资料下载',
					tab_con: 'Information',
					},
					{
					title: '我的活动',
					tab_con: 'MyActivities',
					}
				] 
	        }
	    },
        methods: {
			toggleTab(tab_con,currentClass){
				this.currentTab = tab_con;  // 选中tab内容块展示
				this.currentClass = currentClass;  // 选中tab样式
				}
        },
        components: {
			Index,
            Corporation,
			ClubActivities,
			System,
			Information,
			MyActivities
        }
	}
</script>

<style>
	.tab_button li{
		width: 100px; 
		height: 58px; 
		border: 1px solid #999; 
		cursor: pointer; 
		display: inline-block; 
		margin-left: 20px; 
		border-radius: 8px; 
		font: bold 24px/84px 'Microsoft Yahei';
		color: #333; text-align: center;
		}
	.tab_button li.active{ 
		border: 1px solid #f3ae19;
		color: #f3ae19
	}
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
		color: #fff;
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

</style>