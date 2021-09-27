# 我的vim配置说明

## 一.自述

这个是我折腾了好几天配置下来的，从vim教程网，各种博客，以及插件的github主页介绍里各种抄来的。如ALE插件，全英语也拦不住我好奇心，不认识单词就查呀查。有时加一大堆有时又删一大堆，暂时留下来这些，不折腾了，人生还不成功。这只是个业余爱好，小聪明暂时放一放吧，备份一下。

## 二.简介

### 1.插件

1. gruvbox  主题，不解释
2. vim-ariline  状态栏插件，只装一个本体，上面的主题自带支持这个插件，懒得多装airline主题
3. emmet   写html与css用的，自己改了一下模板
4. auto-pairs  在括号内换行自动缩进，不用自己定义了
5. vim-rainbow  彩虹色括号，很实用
6. ale  异步语法提示引擎，听说很优秀，所以研究了好久。

### 2.快捷键

1. 按vim教程网的推荐，调整j k键为gj gk。能在内容折叠换行后的屏幕行移动，而不是实际行。
2. F2 行号开关 ；F3 列表内空白字符或TAB显示开关 ；F4 粘贴开关（与缩进冲突，默认关闭，临时开启，粘完关掉）F5 快捷执行 js，python，shell脚本  F6 ALE快速格式化代码。
3. 调整emmet快捷键为 CTRL+Z ,

## 三.其他说明

### 1.ALE支持：

   因为只对python，JavaScript，shell感兴趣，ALE只装了对应的语法提示，与代码格式化插件，分别需要

   ```shell
   sudo pip install flake8 autopep8 
   sudo npm install -g eslint
   cd ~/project  //任意工程文件夹
   npm --init    //初始化一下才能用eslint，否则不能用
   eslint --init
   sudo apt install shellcheck //debian自带，其他自寻
   ```

   分别在~/.vim/ftplugin下面的对应文件中配置，作者推荐的。这三个在安装脚本中直接echo进去了。

   shell的代码格式化插件shfmt跟ale结合弄不成，所以没整。

### 2.emmet模板修改

    查了很多博客，修改了emmet的默认模板，可以用！{内容}，直接生成带标题的html5模板。

    在emmet插件下的autoload文件夹下的emmet文件第1700多行找到的，文本替换命令不熟，而且括号引号较多，怕出错，暂时没想好怎么写。只能安装完官方插件后，执行个mv命令脚本直接替换改好的。     有待优化。
