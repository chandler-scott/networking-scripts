# Macvlan Networking in Docker

## What is Macvlan?
Macvlan is a Docker network driver that allows containers to have their own unique MAC addresses, making them appear as physical devices on the network. This is useful when integrating Docker containers into existing network infrastructures.

## Creating a Macvlan Network

1. Identify the parent network interface:
   ```sh
   ip a
   ```
   Example output:
   ```sh
   3: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
   ```
   Here, `eth0` is the parent interface.

2. Enable promiscuous mode on the parent interface (required for communication between host and containers):
   ```sh
   sudo ip link set eth0 promisc on
   ```

3. Create a Macvlan network:
   ```sh
   docker network create -d macvlan \
     --subnet=192.168.1.0/24 \
     --gateway=192.168.1.1 \
     -o parent=eth0 \
     my_macvlan_network
   ```

## Running Containers on a Macvlan Network

- Start a container with Macvlan:
  ```sh
  docker run -dit --name macvlan_container \
    --network=my_macvlan_network \
    alpine sh
  ```

- Assign a static IP address to the container:
  ```sh
  docker network connect --ip 192.168.1.100 my_macvlan_network macvlan_container
  ```

## Connecting the Host to the Macvlan Network
If the host cannot communicate with Macvlan containers, ensure promiscuous mode is enabled:
   ```sh
   sudo ip link set eth0 promisc on
   ```

## Deleting a Macvlan Network
- To remove a Macvlan network:
  ```sh
  docker network rm my_macvlan_network
  ```
- To disable promiscuous mode:
  ```sh
  sudo ip link set eth0 promisc off
  ```

## Troubleshooting
- Ensure the parent interface is UP:
  ```sh
  ip link show eth0
  ```
- Check if the network exists:
  ```sh
  docker network ls
  ```
- Verify container’s network settings:
  ```sh
  docker inspect macvlan_container
  ```

