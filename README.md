# 🧠 Smart Contracts – Gobierno Público

Este repositorio contiene los contratos inteligentes fundamentales del proyecto **Gobierno Público**, una plataforma descentralizada para votación ciudadana tanto anónima como verificada, basada en tecnología blockchain.

---

## 📜 Contenido de los contratos

### 1. `VotingManager.sol`

Contrato para la gestión de votaciones y propuestas ciudadanas.

#### Funcionalidades:

- Crear propuestas con título, descripción, duración y ministerio/departamento responsable.
- Emitir votos (Sí / No).
- Impide el doble voto por dirección.
- Consulta de resultados por propuesta.

#### Eventos:

- `ProposalCreated(uint256 id, string title)`
- `Voted(address voter, uint256 proposalId, bool vote)`

---

### 2. `TokenGPCOM.sol`

Token ERC-20 para la plataforma **GobiernoPublico.com**, orientada a votación **anónima**.

- Nombre: `GobiernoPublico.com Token`
- Símbolo: `GPCOM`
- Suministro inicial: `1,000,000` tokens

---

### 3. `TokenGPORG.sol`

Token ERC-20 para la plataforma **GobiernoPublico.org**, orientada a votación **verificada (KYC)**.

- Nombre: `GobiernoPublico.org Token`
- Símbolo: `GPORG`
- Suministro inicial: `1,000,000` tokens

---

## 🛠️ Requisitos

- Solidity ^0.8.20
- OpenZeppelin Contracts (`npm install @openzeppelin/contracts` si usas Hardhat/Truffle)

---

## 🚀 Despliegue Rápido

Puedes probar estos contratos fácilmente en [Remix](https://remix.ethereum.org/):

1. Abre Remix
2. Crea archivos `.sol` con el contenido de los contratos
3. Compílalos usando el compilador 0.8.20
4. Despliega `VotingManager.sol`
5. Despliega cada Token (`TokenGPCOM.sol` y `TokenGPORG.sol`) individualmente

---

## ✅ Próximas Mejoras

- Integración con zk-SNARKs para voto anónimo real
- Restricción de votos mediante balance de token
- DAO completamente funcional (basado en Aragon OSx o Governor)
- Registro descentralizado de usuarios con KYC

---

## 🛡️ Licencia

Publicado bajo licencia **MIT**. Puedes usarlo libremente con fines educativos, sociales o de desarrollo.

---

**Gobierno Público**  
Democracia ciudadana descentralizada y transparente  
[gobiernopublico.com](http://www.gobiernopublico.com) | [gobiernopublico.org](http://www.gobiernopublico.org)
