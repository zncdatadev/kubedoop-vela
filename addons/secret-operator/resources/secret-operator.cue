package main

secretOperator: {
	name: "secret-operator"
	type: "helm"
	dependsOn: ["secret-operator-ns"]
	properties: {
		repoType: "helm"
		url: "https://zncdatadev.github.io/kubedoop-helm-charts"
		chart: "secret-operator"
		releaseName: "secret-operator"
		targetNamespace: parameter.namespace
		version: context.metadata.version
		upgradeCRD: parameter.upgradeCRD
		values: {
			replicaCount: parameter.replicas
		}
	}
}
