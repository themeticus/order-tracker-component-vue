<template>

    <div>

    <div class="component">

        <h1>Order <span>#125654852</span></h1>
        <h4>Delivery by <span>Thursday, December 25</span></h4>

        <hr>

        <div class="pin-labels">
            <div class="label" :class="{ 'lowlight': 0 < progress }">Ordered</div>
            <div class="label" :class="{ 'lowlight': 33 < progress }">Shipped</div>
            <div class="label" :class="{ 'lowlight': 66 < progress }">Delivered</div>
        </div>

        <div class="progress-container">
            <div class="pin-bar">
                <div v-for="(pin, index) in ['ordered', 'shipped', 'delivered']" :key="index" :class="['pin', { 'highlight': index <= activePinIndex }, pin]">
                    <img src="@/assets/img/tick.svg" />
                </div>
            </div>
            <div class="progress-bar" :style="{ width: progress + '%' }"></div>
        </div>

        <p class="status">Arriving in <span>3 days.</span></p><br />

        <details>
            <summary>Tracking Details</summary>
            <table>
                <tr>
                    <td>Method</td>
                    <td>FedEx Home Delivery</td>
                </tr>
                <tr>
                    <td>Carrier</td>
                    <td>FedEx 800-GOFEDEX (463 3398)</td>
                </tr>
                <tr>
                    <td>Tracking</td>
                    <td>FX-91-125654852</td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        142 John Glasgow Ave<br />
                        New Port Wallace<br />
                        New York<br />
                        79860<br />
                    </td>
                </tr>
            </table>
        </details>

        <hr>

    </div>

    <div class="admin">
        <input type="checkbox" name="toggle" id="toggle" />
        <label for="toggle"></label>
        <div class="admin-tray">
            <div class="admin-options">
                <p class="admin-status">Change Status</p>
                <button @click="progressTo(33, 'ordered')">Ordrd</button>
                <button @click="progressTo(66, 'shipped')">Shpd</button>
                <button @click="progressTo(99, 'delivered')">Dlvrd</button>
            </div>
        </div>
    </div>

    </div>

</template>

<script setup>

    import { ref } from 'vue';

    const progress = ref(33);
    const activePinIndex = ref(0);

    const progressTo = (newProgress, pinId) => {
        
        const pinIndex = ['ordered', 'shipped', 'delivered'].indexOf(pinId);

        if (pinIndex > -1) {
            progress.value = newProgress;
            activePinIndex.value = pinIndex;
        }
    };

</script>

<style>

@import "@/assets/css/base.css";
@import "@/assets/css/progress.css";
@import "@/assets/css/admin.css";

</style>