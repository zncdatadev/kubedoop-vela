# Kubedoop Data Platform

Kubedoop Data Platform is a modular open-source data platform that provides Kubernetes-native deployment
and management of popular open source data apps like [Apache Kafka](https://kafka.apache.org/), [Apache Doris](https://doris.apache.org/),
[Trino](https://trino.io/) and [Apache Spark](https://spark.apache.org/). All data apps work together seamlessly, and can be added or removed in no time.
Based on Kubernetes, it allows you to deploy, scale and manage data infrastructure in any environment running everywhere – on-prem or in the cloud.

You can declaratively build these environments, and we don’t stop at the tool level as we also provide ways for the users to interact with the platform in the "as Code"-approach.

All this makes Kubedoop Data Platform an ideal tool for scenarios including modern Data Warehouses, Data Lakehouses, Event Streaming, Machine Learning or Data Meshes.
Use it to create unique and enterprise-class data architectures.

## KubeVela Catalog

KubeVela is a modern software delivery control plane to make deploying and operating applications across today's hybrid, multi-cloud environments easier, faster and more reliable.

One of the core goals of KubeVela is to build an open, inclusive, and vibrant OSS developer community focused on solving real-world application delivery and operation problems, sharing the reusable building blocks and best practices.

Here's the KubeVela catalog of addons for the Kubedoop Data Platform.

### How to use

You can run the following command to set up the new registry.

```shell
vela addon registry add kubedoop --type=helm --endpoint=https://zncdatadev.github.io/kubedoop-vela/official
```

You can enable these addons by vela command line by:

```shell
vela addon enable kubedoop/<official-addon-name>
```

You can also enable addons by click the page on VelaUX.

Please refer to [KubeVela addons docs](https://kubevela.io/docs/reference/addons/overview) for more infos.

## Community

We want your contributions and suggestions! One of the easiest ways to contribute is to participate in discussions on the Github Issues/Discussion, chat on IM or the community meeting.

### Contact Us

Reach out with any questions you may have and we'll make sure to answer them as soon as possible!

* Mailing list/group: [kubedoop@googlegroups.com](https://groups.google.com/g/kubedoop) (*English*)
* Slack: #kubedoop on [http://kubedoop.slack.com](http://kubedoop.slack.com) (*English*)
* WeChat Group (*Chinese*): Broker WeChat to add you into the user group. Scan the QR code to add WeChat, invite to join the group, and apply for a comment of `Kubedoop`.

  <img src="https://github.com/zncdatadev/kubedoop/raw/main/docs/assets/contact-wechat.jpg" width="200" alt="Contact WeChat" />
  
## Contributing

If you'd like to contribute to Kubedoop, please refer to our [Contributing Guide](https://kubedoop.dev/docs/developer-manual/collaboration) for more information.
We welcome contributions of all kinds, including but not limited to code, documentation, and use cases.

## License

Kubedoop is under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for details.
