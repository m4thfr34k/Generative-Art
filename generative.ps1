# Generative Art script example
# Companion to article - https://blog.kreechures.com/generative-nfts/
# Daniel Charpentier
# https://www.kreechures.com/
# https://app.kreechures.com/

# How many images do we want to generate
$MaxImages = 50
for ($counter = 0 ; $counter -le $MaxImages ; $counter++) { 

   # Let's bring in a random component from the different types
   # Get-Random gets a random integer between the min, inclusive, and the max, not inclusive
   $EarsPath = '.\Components\Ears' + [string](Get-Random -Minimum 1 -Maximum 3) + '.txt'
   $Ears = Get-Content $EarsPath -Raw

   $EyesPath = '.\Components\Eyes' + [string](Get-Random -Minimum 1 -Maximum 4) + '.txt'
   $Eyes = Get-Content $EyesPath -Raw

   $BlushPath = '.\Components\Facespot' + [string](Get-Random -Minimum 1 -Maximum 4) + '.txt'
   $Blush = Get-Content $BlushPath -Raw 

   $GlassesPath = '.\Components\Glasses' + [string](Get-Random -Minimum 1 -Maximum 3) + '.txt'
   $Glasses = Get-Content $GlassesPath -Raw 

   $HornsPath = '.\Components\Horn' + [string](Get-Random -Minimum 1 -Maximum 9) + '.txt'
   $Horn = Get-Content $HornsPath -Raw

   # Let's grab our main file
   $Art = Get-Content ".\SVGTutorial.svg" -Raw

   # We want to replace three of our colors (primary, secondary, and tertiary)
   # This example grabs completely random colors. Rather than get completely random colors,
   # you'll probably want to get a random color from a list of pre-selected colors. 
   $PrimaryColor = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $SecondaryColor = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $TertiaryColor = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_1 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_2 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_3 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_4 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_5 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_6 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_7 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_8 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_9 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_10 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_11 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_12 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_13 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_14 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_15 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)
   $REPLACE_COLOR_16 = "#{0:X6}" -f (Get-Random -Maximum 0x1000000)



   # Replacing colors first
   $Art = $Art -replace 'REPLACE_PRIMARY_COLOR', $PrimaryColor
   $Art = $Art -replace 'REPLACE_SECONDARY_COLOR', $SecondaryColor
   $Art = $Art -replace 'REPLACE_TERTIARY_COLOR', $TertiaryColor
   
   # This should really be a loop
   $Art = $Art -replace '#REPLACE_COLOR_1', $REPLACE_COLOR_1
   $Art = $Art -replace '#REPLACE_COLOR_2', $REPLACE_COLOR_2
   $Art = $Art -replace '#REPLACE_COLOR_3', $REPLACE_COLOR_3
   $Art = $Art -replace '#REPLACE_COLOR_4', $REPLACE_COLOR_4
   $Art = $Art -replace '#REPLACE_COLOR_5', $REPLACE_COLOR_5
   $Art = $Art -replace '#REPLACE_COLOR_6', $REPLACE_COLOR_6
   $Art = $Art -replace '#REPLACE_COLOR_7', $REPLACE_COLOR_7
   $Art = $Art -replace '#REPLACE_COLOR_8', $REPLACE_COLOR_8
   $Art = $Art -replace '#REPLACE_COLOR_9', $REPLACE_COLOR_9
   $Art = $Art -replace '#REPLACE_COLOR_x10', $REPLACE_COLOR_10
   $Art = $Art -replace '#REPLACE_COLOR_x11', $REPLACE_COLOR_11
   $Art = $Art -replace '#REPLACE_COLOR_x12', $REPLACE_COLOR_12
   $Art = $Art -replace '#REPLACE_COLOR_x13', $REPLACE_COLOR_13
   $Art = $Art -replace '#REPLACE_COLOR_x14', $REPLACE_COLOR_14
   $Art = $Art -replace '#REPLACE_COLOR_x15', $REPLACE_COLOR_15
   $Art = $Art -replace '#REPLACE_COLOR_x16', $REPLACE_COLOR_16


   # Replacing individual components
   $Art = $Art -replace 'HORNOPTION_HERE', $Horn
   $Art = $Art -replace 'EYESOPTION_HERE', $Eyes
   $Art = $Art -replace 'EARSOPTION_HERE', $Ears
   $Art = $Art -replace 'FACESPOTOPTION_HERE', $Blush
   $Art = $Art -replace 'GLASSESOPTION_HERE', $Glasses


   # Save image
   $ImagePath = '.\GeneratedArt\Art_Example' + [string]($counter) + '.svg'
   Add-Content -Path $ImagePath -Value $Art
}