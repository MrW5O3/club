<template>
	<!-- 社团活动 -->
	<div class="club">
	    <ul class="club-tabulation">
	        <li><a href="#">社团活动</a></li>
	    </ul>
	    <div class="club-bulk">
	        <div class="club-bulk-top">
	            <h3>社团活动</h3>
	        </div>
			<ul>
				<li v-for="(item,index) in pageInfos" :key="index">
					<router-link :to="{path:'/ActivityIntroduction', query:{id:item.id}}">{{item.name}}</router-link>
				</li>
			</ul>
	        <!-- <ul>
	            <li><router-link to="/ActivityIntroduction">华优秀传统文化“梨园雅韵”京剧之夜</router-link></li>
	            <li><a href="#">纷呈运动趁年少，不负好春光</a></li>
	            <li><a href="#">亲近传统文化，弘扬时代新风</a></li>
	            <li><a href="#">活动四</a></li>
	            <li><a href="#">活动五</a></li>
	        </ul> -->
	        <div class="club-bulk-bottom">
	            <span class="up">上页</span>
	            <span class="leaf">1</span>
	            <span class="down">下页</span>
	        </div>
	    </div>
	</div>
</template>
	
<script>
	import {
		getManTeamList,
		getLoginUser,
		getPageActivities
		} from "../api";
	
	export default{
	    
	    data(){
	
	        return {	
				teams: [],
				userType: "",
				activeLogs: [],
				pageInfos: [],
				pageIndex: 1,
				pageSize: 10,
				pageTotal: 0,
				totalInfo: 0,
				loading: true,
				showAddFlag: false,
				qryForm: {
					token: this.$store.state.token,
					teamName: "",
					activeName: "",
				},
				activitiesForm: {
					id: "",
					name: "",
					comm: "",
					detail: "",
					ask: "",
					total: 1,
					activeTime: "",
					teamId: "",
				}
			}
	    },
	    methods: {
			getPageInfo(pageIndex, pageSize) {
			
				getPageActivities(pageIndex, pageSize, this.qryForm.token).then(resp => {
			
					this.pageInfos = resp.data.data;
					this.pageIndex = resp.data.pageIndex;
					this.pageSize = resp.data.pageSize;
					this.pageTotal = resp.data.pageTotal;
					this.totalInfo = resp.data.count;
			
					this.loading = false;
				});
			},
	    },
		mounted() {
		
			this.getPageInfo(1, this.pageSize, this.qryForm.token);
		
			getLoginUser(this.$store.state.token).then(resp =>{
		
				this.userType = resp.data.type;
		
				getManTeamList(resp.data.id).then(resp =>{
		
					this.teams = resp.data;
				});
			});
		}
	}
</script>

<style>
	.club {
	    width: 1200px;
	    height: 700px;
	    margin: 0 auto;
	}
	
	.club .club-tabulation {
	    width: 220px;
	    height: 75px;
	    display: inline-block;
	    list-style: none;
	    text-align: center;
	    line-height: 50px;
	    border: 1px solid #e9e9ee;
	    position: relative;
	}
	
	.club .club-tabulation li {
	    width: 180px;
	    margin: 0 auto;
	    border-bottom: 2px solid #e9e9ee;
	}
	
	.club .club-tabulation li a {
	    font-size: 25px;
	    font-family: 仿宋;
	    color: #fa730d;
	    text-decoration: none;
	}
	
	.club .club-bulk {
	    width: 940px;
	    height: 700px;
	    position: relative;
	    top: -75px;
	    left: 300px;
	}
	
	.club .club-bulk .club-bulk-top {
	    width: 940px;
	    height: 49px;
	    background-color: #fff;
	    line-height: 50px;
	    border-bottom: 1px solid #a1a1a1;
	}
	
	.club .club-bulk .club-bulk-top h3 {
	    width: 100px;
	    height: 50px;
	    color: #616161;
	    text-align: center;
	    border-bottom: 3px solid #fa730d;
	}
	
	.club .club-bulk ul {
	    width: 940px;
	    height: 550px;
	    background-color: #fff;
	    position: relative;
	    top: 40px;
	}
	
	.club .club-bulk ul li {
	    width: 940px;
	    height: 55px;
	    line-height: 52px;
	    list-style: none;
	    padding-left: 5px;
	}
	
	.club .club-bulk ul li:nth-child(2n-1){
	    background-color: #eaeaeafb;
	}
	
	.club .club-bulk ul a {
	    text-decoration: none;
	    font-size: 18px;
	    color: #746a6a;
	}
	
	.club .club-bulk ul a:hover {
	    color: #f4e21db8;
	}
	
	.club .club-bulk .bulk-bottom {
	    width: 940px;
	    height: 36px;
	    font-size: 12px;
	    color: #222;
	    position: relative;
	    top: 65px;
	    line-height: 36px;
	}
	
	.club .club-bulk .club-bulk-bottom .up {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.club .club-bulk .club-bulk-bottom .leaf {
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
	
	.club .club-bulk .club-bulk-bottom .down {
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