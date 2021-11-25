How to Run the Project:

    docker-compose build
    
    docker-compose up -d
    
Wait until create-connectors will finish and run this command:

    docker-compose start create-connectors

Now we are ready to enter ksql:

    docker-compose exec ksqldb-cli ksql http://ksqldb:8088


    SET 'auto.offset.reset'='earliest';

Create a stream:

    create stream if not exists actions_stream (
        id varchar,
        userId varchar,
        action varchar,
        browser varchar
    ) with (kafka_topic='logging.audit', VALUE_FORMAT='AVRO');

Create a table:

    create table action_counts with (kafka_topic='action_counts')
        as select EXTRACTJSONFIELD(browser, '$.name'),
                  count(action) as total_actions
    from actions_stream
    group by EXTRACTJSONFIELD(browser, '$.name')
    emit changes;

Print the result from the topic:

    print action_counts from beginning;