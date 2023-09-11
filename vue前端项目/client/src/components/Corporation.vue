<template>
	<!-- 社团列表 -->
	<div class="excellent">
	    <ul class="tabulation">
	        <li><a href="#">东软社团</a></li>
	    </ul>
	    <div class="bulk">
	        <div class="bulk-top">
	            <h3>东软社团</h3>
	        </div>
			<el-table v-loading="loading" element-loading-text="拼命加载中" element-loading-spinner="el-icon-loading"
				element-loading-background="rgba(124, 124, 124, 0.8)" :data="pageInfos" border>
				<el-table-column align="center" type="index" label="序号"></el-table-column>
				<el-table-column align="center" prop="name" label="社团名称"></el-table-column>
				<el-table-column align="center" prop="typeName" label="社团类型"></el-table-column>
				<el-table-column align="center" prop="managerName" label="社团团长"></el-table-column>
				<el-table-column align="center" prop="createTime" label="建立时间"></el-table-column>
				<el-table-column align="center" prop="total" label="社团人数"></el-table-column>
				<el-table-column v-if="userType == 2" align="center" label="操作处理">
					<template slot-scope="scope">
						<el-button 
							type="primary" size="mini" 
							@click="apply(scope.row.id)">申请</el-button>
					</template>
				</el-table-column>
			</el-table>
	    </div>
	</div>
</template>

<script>
	import {
		getAllTypes,
		getPageTeams,
		getLoginUser,
		addApplyLogs,
		} from "../api";
	
	export default {
	
		data() {
	
			return {
				teamTypes: [],
				userType: "",
				pageInfos: [],
				pageIndex: 1,
				pageSize: 10,
				pageTotal: 0,
				totalInfo: 0,
				loading: true,
				showAddFlag: false,
				showUpdFlag: false,
				qryForm: {
					name: "",
					typeId: "",
					token: this.$store.state.token,
				},
				teamsForm: {
					id: "",
					name: "",
					total: 1,
					manager: "",
					typeId: "",
				}
			}
		},
		methods: {
	
			getPageInfo(pageIndex, pageSize) {
	
				getPageTeams(pageIndex, pageSize, this.qryForm.token).then(resp => {
					this.pageInfos = resp.data.data;
					this.pageIndex = resp.data.pageIndex;
					this.pageSize = resp.data.pageSize;
					this.pageTotal = resp.data.pageTotal;
					this.totalInfo = resp.data.count;
					this.loading = false;
				});
			},
			apply(id){
			
				this.$confirm('确认申请加入社团吗', '提示', {
					confirmButtonText: '确定',
					cancelButtonText: '取消',
					type: 'warning'
				}).then(() => {
			
					addApplyLogs({teamId: id, status: 0, token: this.$store.state.token}).then(resp => {
						
						if(resp.code == 0){
			
							this.$message({
								message: '申请已提交，请耐心等待',
								type: 'success'
							});
			
							this.getPageInfo(1, this.pageSize, this.qryForm.token);
						}else{
			
							this.$message({
								message: resp.msg,
								type: 'warning'
							});
						}
					});
				});
			}
			
		},
		mounted() {
	
			this.getPageInfo(1, this.pageSize, this.qryForm.token);
	
			getAllTypes().then(resp =>{
	
				this.teamTypes = resp.data;
			});
	
			getLoginUser(this.$store.state.token).then(resp =>{
	
				this.userType = resp.data.type;
			});
		}
	}
</script>

<style>
	.excellent {
	    width: 1200px;
	    height: 700px;
	    margin: 0 auto;
	}
	
	.excellent .tabulation {
	    width: 220px;
	    height: 75px;
	    display: inline-block;
	    list-style: none;
	    text-align: center;
	    line-height: 50px;
	    border: 1px solid #e9e9ee;
	    position: relative;
	}
	
	.excellent .tabulation li {
	    width: 180px;
	    margin: 0 auto;
	    border-bottom: 2px solid #e9e9ee;
	}
	
	.excellent .tabulation li a {
	    font-size: 25px;
	    font-family: 仿宋;
	    color: #fa730d;
	    text-decoration: none;
	}
	
	.excellent .bulk {
	    width: 940px;
	    height: 700px;
	    position: relative;
	    top: -75px;
	    left: 300px;
	}
	
	.excellent .bulk .bulk-top {
	    width: 940px;
	    height: 49px;
	    background-color: #fff;
	    line-height: 50px;
	    border-bottom: 1px solid #a1a1a1;
	}
	
	.excellent .bulk .bulk-top h3 {
	    width: 100px;
	    height: 50px;
	    color: #616161;
	    text-align: center;
	    border-bottom: 3px solid #fa730d;
	}
	
	.excellent .bulk ul {
	    width: 940px;
	    height: 550px;
	    background-color: #fff;
	    position: relative;
	    top: 40px;
	}
	
	.excellent .bulk ul li {
	    width: 940px;
	    height: 55px;
	    line-height: 52px;
	    list-style: none;
	    padding-left: 5px;
	}
	
	.excellent .bulk ul li:nth-child(2n-1){
	    background-color: #eaeaeafb;
	}
	
	.excellent .bulk ul a {
	    text-decoration: none;
	    font-size: 18px;
	    color: #746a6a;
	}
	
	.excellent .bulk ul a:hover {
	    color: #f4e21db8;
	}
	
	.excellent .bulk .bulk-bottom {
	    width: 940px;
	    height: 36px;
	    font-size: 12px;
	    color: #222;
	    position: relative;
	    top: 65px;
	    line-height: 36px;
	}
	
	.excellent .bulk .bulk-bottom .up {
	    width: 30px;
	    height: 20px;
	    border: 1px solid #ccc;
	    text-align: center;
	    line-height: 17px;
	    display: inline-block;
	    position: relative;
	    left: 390px;
	}
	
	.excellent .bulk .bulk-bottom .leaf {
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
	
	.excellent .bulk .bulk-bottom .down {
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