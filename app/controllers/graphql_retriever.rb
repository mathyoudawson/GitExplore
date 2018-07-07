class GraphqlRetriever
  include GraphqlClient

  WellingtonContributers = GraphqlClient::Client.parse <<-'GRAPHQL'
    query {
  search(query: "type:user location:wellington", first: 20, type: USER ) {
    userCount
    edges {
      node {
        ... on User {
          	login
          	name
          	location
          	bio
          	isHireable
          	avatarUrl(size: 100)
         	 	email
         	 	url
        }
      }
    }
  }
}
GRAPHQL
end
