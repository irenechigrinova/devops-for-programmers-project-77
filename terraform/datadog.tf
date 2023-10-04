# yandex mirror doesnt have datadog, so we get an error here
#resource "datadog_monitor" "watchdog" {
#    name = "watchdog"
#    type = "event-v2 alert"
#    messag = ""  
#    query = "events(\"source:watchdog tags:\\\"story_category:infrastructure\\\" tags:\\\"story_type:cloud_network_health\\\"\").rollup(\"count\").by(\"story_key,region,availability-zone\").last(\"30m\") > 0"
#
#    monitor_thresholds {
#       warning  = 2
#       critical = 4
#    }
#}