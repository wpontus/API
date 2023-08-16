cls
#Goal: Show me the moves of a pokemon
$Pokemonname = "bulbasaur"


#Make sure to replace the URL values as it makes sense to match your scenario"
$url_base = "https://pokeapi.co"
$url_endpoint = "/api/v2/pokemon/$Pokemonname/"
$url = $url_base + $url_endpoint

#Gather the information from API
$response = Invoke-RestMethod -uri $url -Method Get -ContentType "application/json" -headers $header -Body $body

#Show the result
$response.moves |Select-Object -ExpandProperty move | select name