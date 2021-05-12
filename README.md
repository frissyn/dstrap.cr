# dstrap

`dstrap` is a simple script made to get the most useful information about your current working directory. Made with Crystal for Linux systems, it's the perfect supplement to commands like `ls -la`

### Installation:

To install and build the latest version of dstrap, run the following:

```bash
wget -O dstrap.cr https://raw.githubusercontent.com/frissyn/dstrap.cr/main/dstrap.cr
crystal build dstrap.cr -o dstrap --release --no-debug --progress
chmod +x ./dstrap
```

And that's all! Call the executable with `./dstrap` and enjoy.

```bash
./dstrap
```

![image](https://storage.googleapis.com/replit/images/1620853470837_51407f2bc32aec3db52e2a179daa58e9.png)