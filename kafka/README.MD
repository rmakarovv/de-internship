How to Run:

    docker-compose build
    
    docker-compose up -d
    
    docker-compose start create-connectors
    
    curl -XGET "http://localhost:8083/connectors?expand=status" | jq
    
    docker exec -tiu postgres cc51a1112f8c psql
    
    \c
    
    \dt+

Expected output

                                   List of relations
 Schema | Name  | Type  |  Owner   | Persistence | Access method | Size  | Description 
 
--------+-------+-------+----------+-------------+---------------+-------+-------------
 
 public | table | table | postgres | permanent   | heap          | 16 kB | 

(1 row)
