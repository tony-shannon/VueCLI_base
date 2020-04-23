<template>
    <div>
        <ul>
            <li v-for="problem in problems" v-bind:key="problem">{{ problem.idN }} {{ problem.CodeD }} {{ problem.Name }}</li>
        </ul>
    </div>
</template>

<script>
    import axios from "axios";
    export default {
        name: "GraphQL_Problems",
        data() {
            return {
                problems: []
            };
        },
        async mounted() {
            try {
                var result = await axios({
                    method: "POST",
                    url: "https://eu1.prisma.sh/hit-experiment-4/med-crud1/dev",
                    data: {
                       query: `
                                   mutation{
                                        createProblem(
                                            data: {
                                            idN: 3
                                            CodeD: "GQ_11D10",
                                            Description: "Cardiac Congestion",
                                            Name: "CCF",
                                            Days: "5"
                                        }
                                        )
                                        {id
                                        idN
                                        Name}
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
                                problems {
                                    id
                                    idN
                                    CodeD
                                    Name
                                    Description
                                    Days
                                }
                                }
                        `  
                    }
                });
                console.log("Query-Query - Data Out from GraphQL")
                
                this.problems = result2.data.data.problems; 
                return result;
            } catch (error) {
                console.error(error);
            }
        }
    }
</script>

<style scoped></style>