package main

hdfsOperator: {
	name: "hdfs-operator"
	type: "helm"
	dependsOn: ["hdfs-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "hdfs-operator"
		releaseName: "hdfs-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
