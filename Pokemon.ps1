function Get-PokemonMoves {
    param (
        $Pokemonname
    )
    #The pokemon API
    $url_base = "https://pokeapi.co"
    $url_endpoint = "/api/v2/pokemon/$Pokemonname/"
    $url = $url_base + $url_endpoint

    #Gather the information from API
    $response = Invoke-RestMethod -uri $url -Method Get -ContentType "application/json" -headers $header -Body $body

    #Show the result
    Write-Output $response.moves |Select-Object -ExpandProperty move | select name
}
Get-PokemonMoves -Pokemonname charizard