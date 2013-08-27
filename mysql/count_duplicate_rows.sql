SELECT Count(*) duplicate_ips
FROM
(
    select ip, Count(*)
    from submissions
    group by ip
    having Count(*) > 1
)