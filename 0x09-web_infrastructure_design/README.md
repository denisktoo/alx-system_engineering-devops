# Web Infrastructure Design

## Tasks

## 0. Simple Web Stack

**Architecture:** Single server with LAMP stack
- 1 Server (8.8.8.8)
- Nginx web server
- Application server
- MySQL database
- Application files (codebase)

**Issues:**
- SPOF (Single Point of Failure)
- Downtime during maintenance
- Cannot scale with traffic

## 1. Distributed Web Infrastructure

**Architecture:** 3-server distributed system
- HAproxy load balancer
- 2 Servers (web + application)
- MySQL database
- Round Robin distribution
- Active-Active setup
- Primary-Replica database

**Issues:**
- Load balancer SPOF
- No security (firewall/HTTPS)
- No monitoring

## 2. Secured Web Infrastructure with Monitoring

**Architecture:** 3-server secured system
- SSL certificate (HTTPS)
- 3 Firewalls (per server)
- 3 Monitoring clients
- HAproxy load balancer
- Dedicated servers (Web, App, DB)

**Issues:**
- SSL termination at load balancer
- Single MySQL writer
- Mixed components on servers

## 3. Scaled Web Infrastructure with Load Balancer Cluster

**Architecture:** High availability system
- 2 HAproxy load balancers (clustered)
- 3 Dedicated servers:
  - Web Server (Nginx + static files)
  - Application Server (business logic)
  - Database Server (MySQL)

**Improvements:**
- Eliminates load balancer SPOF
- Component separation/specialization
- Better performance and scalability
- Independent server maintenance

---

Each design addresses limitations of the previous one, progressing from basic functionality to enterprise-grade high availability and security.
