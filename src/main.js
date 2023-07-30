import { createPinia } from 'pinia';
import { createApp } from 'vue';
import App from './App.vue';
import OrderTracking from './components/OrderTracking.vue';

const app = createApp(App);

app.component('OrderTracking', OrderTracking);
app.use(createPinia());
app.mount('#app');
