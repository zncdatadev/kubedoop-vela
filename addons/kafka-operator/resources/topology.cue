package main

import "encoding/json"

resourceTopology: {
    apiVersion: "v1"
    kind:       "ConfigMap"
    metadata: {
        name:      "kafka-operator-topology"
        namespace: "vela-system"
        labels: {
            "rules.oam.dev/resources":       "true"
            "rules.oam.dev/resource-format": "json"
        }
    }
    data: rules: json.Marshal([{
        parentResourceType: {
            group: "kafka.kubedoop.dev"
            kind:  "KafkaCluster"
        }
        childrenResourceType: [
            {
                apiVersion: "apps/v1"
                kind:  "StatefulSet"
            },
            {
                apiVersion: "v1"
                kind:  "Service"
            },
        ]
    }])
}