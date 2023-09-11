import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

export default new VueRouter({

  routes: [
    {
      path: '/',
      name: 'login',
      component: require("../views/login.vue").default
    },
	{
		path: '/ActivityIntroduction',
		name: 'ActivityIntroduction',
		component: require("../views/pages/ActivityIntroduction.vue").default,
	},
	{
		path: '/Systemcontent',
		name: 'Systemcontent',
		component: require("../views/pages/Systemcontent.vue").default,
	}
  ]
});
