# graphql-project
Start up based on this tutorial
https://www.thepolyglotdeveloper.com/2019/01/query-graphql-api-vuejs-axios/

## queries and mutations to add
query 
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

mutation{
  createProblem(
    data: {
    idN: 1
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

query    {
  medications {
    id
    idN
    DoseMg
    Indication
    Name
    Route
  }
}

mutation{
  createMedication(
    data: {
    idN: 4
    DoseMg: 400
    Indication: "Cardiac Support"
    Name: "Digoxin"
    Route: "IV"
  }
  )
  {id
   idN
   Name}
}

query  {
  adverse_Events {
    id
    idN
    CodeD
    Description
    Type
    Name
    Days
  }
}

mutation{
  createAdverse_Event(
    data: {
    idN: 4
    CodeD: "ABC123",
    Description: "Cardiac Congestion",
    Type: "Drug Toxicity"
    Name: "CCF",
    Days: "5"
  }
  )
  {id
   idN
   Name}
}




## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
