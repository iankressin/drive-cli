# 🐶 Hana

Hana is a way to share files across computers connected to the same network using mDNS as its foundation.

The reason behind Hana is to never go out into the web when is not needed. It's fairly common to share files across devices that are not connected to the same network using overkill and untrustworthy platforms such as Google Drive, Dropbox, WhatsApp, Messanger and many others. This project aims to provide a way to share files locally in a safe and reliable way, so you don't need to worry about your privacy, performance and security.

The way Hana works is through a combination of mDNS to discover peers on the local network and a TCP server to exchange files back and forth. The underlying building block behind [Hana](https://github.com/iankressin/hana) and [Hana CLI](https://github.com/iankressin/hana-cli) are [Hana Client](https://github.com/iankressin/hana-client) and [Hana Server](https://github.com/iankressin/hana-server). 

(Documentation on Hana Client and Hana Server soon)

## 🖥️ Hana CLI

Commands:

- `hana init`: initialize the current location as a Hana folder.
- `hana share [fileNames]`: if any server is up on the local network, send the list of files to it. If the server already has any of the files, it won't be transmitted.
- `hana server`: server mode, allows to receive files.
- `hana update`: update Hana's list of the files contained in the current folder. This is necessary only if a new file is allocated into the folder not using Hana (E.g. using `mv` or `cp`).

## ⚠️ Alpha Warning

This project is in alpha phase so it's in constant change and some features may not work as expected. 

We appreciate if you take your time to report bugs or open a feature request!

## 📥 Installation

```jsx
curl -L https://raw.githubusercontent.com/iankressin/hana-cli/main/install.sh | bash
```

## 🔧 Development

Setup your environment

- `git clone https://github.com/iankressin/hana-cli`
- `cd hana-cli`
- `cargo run`

## ↔️ Interoperability

**Hana** and **Hana CLI** were built to work together, so it's safe to share files using the CLI and the GUI versions of Hana.

## 🤕 Known Problems

Current Hana do not support:

- File name containing white spaces
- Files > 100mb
- Retry send files if no server was found on the first try
- Windows OS