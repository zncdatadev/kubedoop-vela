package main

kafkaOperator: {
	name: "kafka-operator"
	type: "helm"
	dependsOn: ["kafka-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "kafka-operator"
		releaseName: "kafka-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
