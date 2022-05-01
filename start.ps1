param([switch]$NotCI=$false)

docker build --tag sharpninja.minecraft .

if($LASTEXITCODE -eq 0 && $NotCI){
    docker run -h tcp://0.0.0.0:2375 -p 25565:25565 -p 25575:25575 -d -it sharpninja.minecraft
}
