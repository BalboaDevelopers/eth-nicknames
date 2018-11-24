# eth-nicknames
Un dapp para almacenar nicknames de un contrato inteligente

## Creación del ambiente
**Primera Etapa:**

0. `vagrant up && vagrant ssh  # Desde dentro de la carpeta del proeyecto.`
1. `cd /vagrant`
2. `mkdir src`
3. `cd src`
4. `truffle init`  (Más información https://truffleframework.com/)

**Segunda Etapa:**

1. `truffle init`
2. `truffle compile`
3. `truffle migrate`
4. Modifcar el archivo `truffle.js` para corregir el error `Error: No network specified. Cannot determine current network.`.
```javascript
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    }
  }
}; 
```
5. `docker-compose up`  # Levantar el ganache, nodo local de Ethereum.
6. `truffle migrate`
