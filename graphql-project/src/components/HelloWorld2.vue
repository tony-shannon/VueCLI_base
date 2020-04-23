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
                                   mutation {
                                    createUser(
                                        data: {
                                        id: "wioxoi34--W8989779"
                                        name: "Jilly Horsehound"
                                        }
                                    )
                                    {id
                                    name}
                                    }                        
                                    `
                    }
                });
                console.log("Query-Mutation - Data In to GraphQL")
                

                var result2 = await axios({
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
                console.log("Query-Query - Data Out from GraphQL")
                
                this.users = result2.data.data.users; 
                return result;
            } catch (error) {
                console.error(error);
            }
        }
    }
</script>

<style scoped></style>