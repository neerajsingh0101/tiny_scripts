## tiny_scripts

It is a collection of scripts to make everyday life a tiny bit easier.

### How to setup

```
git clone https://github.com/bigbinary/tiny_scripts.git
cd tiny_scripts
pwd 
```

Note down the result of `pwd`.

* open ~/.bashrc file by executing `subl ~/.bashrc` or `vim ~/.bashrc` . 
* Add following line at the very end of your `~/.bashrc` file.

```
export PATH="paste-result-of-pwd-here:$PATH"
```

* In the above statement replace `paste-result-of-pwd-here` with the output you got in step 1 when you executed `pwd`.

#### How to convert an existing issue into a pull request

Stand in the branch which you want to be converted into a pull request and execute following line in terminal.

```
git_create_pr
```



Brought to you by [BigBinary](http://BigBinary.com)
