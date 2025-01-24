package main

listenerOperator: {
	name: "listener-operator"
	type: "helm"
	dependsOn: ["listener-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "listener-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
