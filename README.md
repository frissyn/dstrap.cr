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

![image](https://storage.googleapis.com/replit/images/1621009367878_bd4e8ba7dbdd96de114354dce93bea2c.png)

### Adding to $PATH

If you'd like to add the `dstrap` executable to `$PATH`, run the following commands:

```
cd ~
mkdir -p bin && cd bin
```

While in the `bin` folder, run the commands denoted in the Installation section. Then add the resulting executable to `$PATH`:

```
export PATH="/home/$USER/bin:$PATH"
```

Now you can use it anywhere, enjoy! 🎉
