cls
#Show me the abilities of a pokemon
$Pokemonname = "Bulbasaur"


#Make sure to replace the URL values as it makes sense to match your scenario"
$url_base = "https://pokeapi.co"
$url_endpoint = "/api/v2/pokemon/$Pokemonname/"
$url = $url_base + $url_endpoint



#Gather the information from API
$response = Invoke-RestMethod -uri $url -Method Get -ContentType "application/json" #-headers $header -Body $body

#Show the result
$response | ConvertTo-Json -Depth 3

$response.results | select move

