How to Run:

    docker-compose build
    
    docker-compose up -d
    
    docker-compose start create-connectors
    
    curl -XGET "http://localhost:8083/connectors?expand=status" | jq
    
    docker exec -tiu postgres cc51a1112f8c psql
    
    \c
    
    SELECT * FROM test_table;

Expected output;

 id | userId |   action   |         msg          | category |                           browser                            |  insertDate   | __op | __tab
le | __deleted | __env 

----+--------+------------+----------------------+----------+--------------------------------------------------------------+---------------+------+------
---+-----------+-------

  1 | user-1 | LOGIN      | User logged in       |          | {"name": "Chrome", "major": "67", "version": "67.0.3396.99"} | 1637828848000 | r    | audit
   | f         | dev
   
  2 | user-1 | NAVIGATION | Navigated to /search |          | {"name": "Chrome", "major": "67", "version": "67.0.3396.99"} | 1637828848000 | r    | audit
   | f         | dev
   
  3 | user-1 | SEARCH     |                      |          | {"name": "Chrome", "major": "67", "version": "67.0.3396.99"} | 1637828848000 | r    | audit
   | f         | dev
   
  4 | user-1 | LOGOUT     | User logged out      |          | {"name": "Chrome", "major": "67", "version": "67.0.3396.99"} | 1637828848000 | r    | audit
   | f         | dev
   
(4 rows)
