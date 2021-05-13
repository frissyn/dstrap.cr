# dstrap

`dstrap` is a simple script made to get the most useful information about your current working directory. Made with Crystal for Linux systems, it's the perfect supplement to commands like `ls -a`.

### Installation:

To install and build the latest version of dstrap, run the following:

```bash
wget -O dstrap.cr https://raw.githubusercontent.com/frissyn/dstrap.cr/main/dstrap.cr
crystal build dstrap.cr -o dstrap --release --no-debug --progress
rm dstrap.cr && chmod +x ./dstrap
```

And that's all! Call the executable with `./dstrap` and enjoy.

```bash
./dstrap
```

![image](https://storage.googleapis.com/replit/images/1620914500866_ce41616884e027118ab8987828e45520.png)