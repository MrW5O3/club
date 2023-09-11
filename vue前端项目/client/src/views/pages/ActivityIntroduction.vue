<template>
	<div>
		<!-- 活动介绍 -->
		<h2 class="activeity-h2">中华优秀传统文化“梨园雅韵”京剧之夜在我校举行</h2>
		<div class="activeity-time">时间：2023-09-05</div>
		<p class="activeity-nr">戏曲具有悠久的历史、独特的魅力和深厚的群众基础，是表现和传承中华优秀传统文化的重要载体。戏曲作为集中体现中华传统文化的艺术形式，融合吸收了诗歌、音乐、舞蹈、美术、服饰、武术等艺术精华，充分展现中华美学风范。戏曲将中国道德故事和家国情怀予以弘扬，引人向真、向善、向美，传承中国精神。
		【陌上花开】国学月活动——梨园雅韵即将于2023年4月14日19：30到21：30于艺术学院小剧场举行。</p>
		<button class="activeity-bm">报名</button>
	</div>
</template>

<script>
	import { forEach } from "core-js/es7/array";
import {
		getManTeamList,
		getLoginUser,
		getPageActivities
		} from "../../api";
	
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
					// resp.data.data.forEach(item => {                   
					//     if (item.id === this.$route.query.id) {
					//         this.pageInfos = item; 
					//     }
					// })
					
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
	
	.activeity-bm {
	    width: 80px;
	    height: 40px;
	    color: #fff;
	    background-color: #fa730d;
	    border-radius: 10px;
	    border: none;
	    position: relative;
	    top: 30px;
	    left: 1280px;
	}
</style>