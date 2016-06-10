name: intro
template: tmpl-inverse

## Introduction

[CoreOs c'est quoi ?](#kesako)

[Organisation d'un cluster ?](#dev-cluster)

[Orchestration des containers ?](#Orchestration)

---
name: kesako

.left-column[
  ## Intro
  ### C'est quoi?
]
.right-column[


## Système:

![CoreOs](img/coreos-wordmark-horiz-color.png)


## Engine:

![rkt](img/rkt-horizontal-color.png)
![Docker](img/Logo-Docker.svg)


## Cluster:

![etcd](img/etcd-horizontal-color.png)

]

???

Objectifs de l'OS:

* Un système d'exploitation
  * Sécurité
  * Cohérence
  * Fiabilité

* Prévu pour gerer des container (rkt / docker)

* Prévu pour fonctionner en cluster

---


name: dev-cluster
count: false

.left-column[
  ## Intro
  ### C'est quoi?
  ### Cluster
]
.right-column[

## Cluster de développement

![Development Cluster](img/cluster-dev.png)

]

???

N'est pas tolérant à la panne

---

name: small-cluster

.left-column[
  ## Intro
  ### C'est quoi?
  ### Cluster
]
.right-column[

## Petit cluster

![Small Cluster](img/cluster-small.png)

]

???

Tolérance aux pannes


---

name: prod-cluster
count: false

.left-column[
  ## Intro
  ### C'est quoi?
  ### Cluster
]
.right-column[

## Cluster de production

![Production Cluster](img/cluster-prod.png)

]

---

name: orchestration

.left-column[
  ## Intro
  ### C'est quoi?
  ### Cluster
  ### Orches- tration
]
.right-column[

### CoreOs Fleet
![K8s](img/coreos-wordmark-horiz-color.png)

### Docker Swarm
![K8s](img/docker-swarm-hero2.png)

### kubernetes
![K8s](img/k8s.svg)

### Apache Mesos
![K8s](img/mesos.png)

]

???

L'orchestration c'est quoi? Prend en charge:

* Gestion des container
* Gestion de découverte de service (service discovery)
    * Gestion du réseau
* Gestion de repartition de charge (load-balancing)
* Gestion des points de montage
* Permet de mettre à jour les applicatifs de manière automatisé

*CoreOs Fleet*: Systemd distribué / détermine le noeud où démarrer le CT 

*Docker swarm*: virtual Docker engine.

*Kubernetes*: 
  * Pod (1 à N container)
  * Replication Controllers (s'assure du nombre de pod en route)
  * Service (1 à N Pods expose le service à l'exterieur du cluster /
    IP address / DNS / load balancer)

*Apache Mesos*: le kernel distribué!

---
