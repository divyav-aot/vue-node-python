import { createRouter, createWebHashHistory } from 'vue-router';
import type { RouteRecordRaw } from 'vue-router';

import HelloWorld from '../components/HelloWorld.vue';

const routes: Array<RouteRecordRaw> = [{ path: '/', name: 'home', component: HelloWorld }];

export const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
