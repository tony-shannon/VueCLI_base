<template>
    <div>
        <ul>
            <li v-for="user in users" v-bind:key="user">{{ user.id }} {{ user.name }}</li>
        </ul>
    </div>
</template>

<script>
    import axios from "axios";
    export default {
        name: "HelloWorld",
        data() {
            return {
                users: []
            };
        },
        async mounted() {
            try {
                var result = await axios({
                    method: "POST",
                    url: "https://eu1.prisma.sh/hit-experiment-4/med-crud1/dev",
                    data: {
                        query: `
                            {
                                users {
                                    id
                                    name
                                }
                            }
                        `
                    }
                });
                this.users = result.data.data.users;
            } catch (error) {
                console.error(error);
            }
        }
    }
</script>

<style scoped></style>