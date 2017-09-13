let $stats := collection("stats")
for $access in $stats
group by $url := $access.url
return {
  "url": $url,
  "avg": avg($access.response_time),
  "hits": count($access)
}