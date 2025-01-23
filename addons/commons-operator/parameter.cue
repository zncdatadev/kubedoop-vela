parameter: {
	// +usage=Specify if upgrade the CRDs when upgrading ingress-nginx or not
	upgradeCRD: *false | bool
	//+usage=Deploy to specified clusters. Leave empty to deploy to all clusters.
	clusters?: [...string]
	//+usage=Namespace to deploy to, defaults to kubedoop-system
	namespace: *"kubedoop-system" | string
	//+usage=Number of replicas
	replicas: *1 | int
}
