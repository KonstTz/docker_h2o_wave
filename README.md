# wave

docker run -t -i -p 10101:10101 -v "$(pwd)/code":/graphs 48c0b5f8d8e1

docker exec -d efd6a0b941e6 python3 /graphs/test.py

docker run -t -i -p 10101:10101 ef6c151e5f20