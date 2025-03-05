package main

hiveOperator: {
	name: "hive-operator"
	type: "helm"
	dependsOn: ["hive-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "hive-operator"
		releaseName: "hive-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
