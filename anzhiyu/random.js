var posts=["2021/09/05/BurpSuite-Clash/","2021/01/30/CTF常用在线工具/","2021/02/13/ESXI安装CentOS7无IP的解决方案/","2021/02/15/HTTP头/","2021/09/06/CVE-2021-3156-sudo提权漏洞/","2023/08/05/IPV6安全/","2021/01/04/Linux笔记/","2021/01/05/Hexo+Gitee搭建个人博客/","2021/10/05/NISP一级题库/","2021/02/07/Nmap笔记/","2021/08/15/W3AF简单应用/","2021/02/13/Sql注入/","2021/01/01/hello/","2021/01/06/java+BurpSuitePro/","2021/09/13/kali主机探测命令与工具集/","2021/02/05/zip伪加密/","2021/08/05/三种XSS/","2023/08/05/人工智能复习/","2021/08/06/信息搜集/","2023/08/03/复活吧！我的Blog/","2023/08/05/大数据/","2021/02/18/常见的MIME类型/","2021/02/18/常见的一句话木马/","2021/07/05/文件包含漏洞/","2021/09/05/弱口令Top100/","2021/09/06/第一次AWD/"];function toRandomPost(){pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);};