package main

zookeeperOperator: {
	name: "zookeeper-operator"
	type: "helm"
	dependsOn: ["zookeeper-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "zookeeper-operator"
		releaseName: "zookeeper-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
