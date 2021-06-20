SICP环境搭建

# 环境

https://www.scheme.com/tspl4/

## 简易

Ubuntu环境下

```
sudo apt-get install mit-scheme
```

运行方式

```
(cf "test")
(load "test")

scheme < test.scm
```



## 尝试

http://www.gnu.org/software/mit-scheme/

Windows平台已经不再维护，只能找老版本，且只有32位的

https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/

虚拟机环境 VMware+Ubuntu

下载Unix版本（虚拟机系统64位）

```sh
sudo apt-get install m4

tar xzf mit-scheme-11.2-aarch64le.tar.gz
cd mit-scheme-11.2/src
./configure
make
make install
```

aarch64版本make报错

```
Makefile:189: recipe for target 'cmpauxmd.o' failed
make[1]: *** [cmpauxmd.o] Error 1
rm cmpauxmd.s
make[1]: Leaving directory '/home/cs18/Downloads/mit-scheme-11.2/src/microcode'
Makefile:796: recipe for target 'microcode/scheme' failed
make: *** [microcode/scheme] Error 2
```

x84_64和Portable SVM make报错

```
termcap.c:147:1: error: return type defaults to ‘int’ [-Werror=implicit-int]
 memory_out ()
 ^~~~~~~~~~
termcap.c: In function ‘convert_ospeed’:
termcap.c:181:24: error: implicit declaration of function ‘OS_baud_index_to_rate’ [-Werror=implicit-function-declaration]
   unsigned int rate = (OS_baud_index_to_rate (os));
                        ^~~~~~~~~~~~~~~~~~~~~
termcap.c:181:24: error: nested extern declaration of ‘OS_baud_index_to_rate’ [-Werror=nested-externs]
termcap.c: At top level:
```


