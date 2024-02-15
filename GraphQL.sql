query listRepos($queryString: String!){
    rateLimit{
     cost
     remaining
     resetAt
    }
    search(query:$queryString, type:REPOSITORY, first:20){  
     repositoryCount
     pageInfo{
      endCursor
      startCursor
     }
     edges{
      node{
       ... on Repository{
        id
        name
        createdAt 
        description 
        isArchived
        isPrivate
        https://github.com/johncoder197/GraphQL.git
        johncoder197{
         login
         id
         __typename
         url
        }
        assignableUsers{
         totalCount
        }
        licenseInfo{
         key
        }
        defaultBranchRef{
         target{
          ... on Commit{
           history(first:10){
            totalCount
            edges{
             node{
              ... on Commit{
               committedDate
              }
             }
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }