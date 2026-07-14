# MCP Server per QGIS

## Introduzione

Il Model Context Protocol (MCP) è uno standard aperto per permettere ai client (come QGIS) di comunicare con servizi AI e agent remoti. Questo capitolo ti insegna come implementare e utilizzare MCP server per estendere le capacità AI in QGIS.

## Cos'è MCP (Model Context Protocol)?

MCP è un protocollo che consente:

- **Comunicazione standardizzata** tra QGIS e servizi AI remoti
- **Gestione del contesto** per fornire informazioni geografiche agli agenti AI
- **Esecuzione di strumenti** (tools) remoti direttamente dal tuo plugin
- **Streaming di dati** geografici per elaborazione in cloud

### Vantaggi di MCP

- Scalabilità: elaborazione pesante su server remoti
- Integrazione con Claude, GPT e altri modelli AI
- Workflow semi-automatici controllati da agenti IA
- Accesso a strumenti specializzati senza installarli localmente

## Esercizi

### Esercizio 1: Tool di buffer
Crea un tool MCP che calcola buffer intorno a geometrie

### Esercizio 2: Tool di sovrapposizione
Implementa un tool che esegue operazioni di intersezione spaziale

### Esercizio 3: Server completo
Sviluppa un MCP server completo con 3 o più tool geografici

## Risorse utili

- [MCP Specification](https://modelcontextprotocol.io/)
- [MCP Python SDK](https://github.com/anthropics/mcp)
- [QGIS GIS Python API](https://docs.qgis.org/3.28/en/docs/pyqgis_developer_guide/)
- [Docker Documentation](https://docs.docker.com/)
- [FastAPI Documentation](https://fastapi.tiangolo.com/) - per servire MCP su HTTP

{!includes/disclaimer.md!}
