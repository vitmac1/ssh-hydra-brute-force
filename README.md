# 🛡️ Trabalho 2 – Segurança e Auditoria de Sistemas

## 📌 Tema: Ataque de Força Bruta ao SSH com Hydra (Ambiente Simulado com Docker)

Este projeto simula um ataque de força bruta à autenticação SSH utilizando a ferramenta **Hydra** em um ambiente Docker. Dois containers são utilizados: um representa o servidor alvo com SSH habilitado (Ubuntu), e o outro o atacante (Kali Linux com Hydra instalado).

---

## 👥 Integrantes do Grupo

- **Maria Gabriela Silvano** – RA: 2272636  
- **Miguel da Silva Peloso** – RA: 2419173  
- **Rafael Couto Lira** – RA: 2409976  
- **Vitor Bertoncello** – RA: 2419220  

---

## 🧱 Estrutura do Ambiente Docker

O projeto utiliza `docker-compose` para orquestrar os containers e criar uma rede isolada entre eles.

### 🔧 Serviços

- **ubuntu-alvo**
  - Container com sistema Ubuntu.
  - SSH configurado e escutando na porta `2222`.
  - IP fixo: `172.28.1.10`.

- **kali-atacante**
  - Container baseado na imagem oficial do Kali Linux.
  - Contém ferramentas de pentest, como o `hydra`.
  - IP fixo: `172.28.1.20`.

---

## 📂 Arquivos e Scripts Principais

| Arquivo                         | Descrição                                                                 |
|----------------------------------|---------------------------------------------------------------------------|
| `docker-compose.yml`            | Define os serviços, redes e IPs fixos dos containers.                    |
| `Dockerfile`                    | Utilizado para configurar o container `ubuntu-alvo` com SSH ativo.       |
| `subir-containers.bash`         | Script para iniciar o ambiente Docker com os containers configurados.    |
| `desligar-containers.bash`      | Encerra e remove os containers do ambiente.                              |
| `limpar-cache-docker.bash`      | Remove volumes, imagens e redes para limpar completamente o ambiente.    |
| `testes-trabalho.bash`          | Script para executar os testes de força bruta com `hydra` no Kali.       |

---

## 🚀 Como Executar o Projeto

### 1. Clonar o Repositório

```bash
git clone https://github.com/vitmac1/ssh-hydra-brute-force.git
cd trabalho2-seguranca
```

### 2. Subir os Containers

```bash
chmod +x subir-containers.bash
./subir-containers.bash
```

## 🧪 Scripts Auxiliares

- **desligar-containers.bash**: Encerra e remove os containers `ubuntu-alvo` e `kali-atacante`.
- **limpar-cache-docker.bash**: Limpa todos os dados residuais do Docker relacionados ao projeto.
- **testes-trabalho.bash**: Executa um ou mais testes de força bruta automatizados com `hydra`.

---

## 📌 Observações Importantes

- O container do Kali já possui o `hydra` instalado.
- Certifique-se de que a porta `2222` esteja livre no seu host.
- O ambiente foi criado apenas para fins **educacionais** e **simulados**, **não execute testes em redes reais sem autorização**.
