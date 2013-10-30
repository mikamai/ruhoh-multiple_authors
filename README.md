Ruhoh Multiple Authors
======================

Multiple Authors plugin for Ruhoh

### Why I need it ?

If you have multiple authors in your ruhoh blog, and for each author you want to
show additional informations other than their name, you have to copy and paste
all the author infos in each page:

```markdown
# example-1.md
---
title: Example 1
author:
  name : John Smith
  email: john@smith.com
---
```

```markdown
#example-2.md
---
title: Example 2
author:
  name : John Smith
  email: john@smith.com
---
```

With this plugin, you can store all the authors informations in the config file
and use only their 'id' to embed their informations, like in the following example:

```
# config.yml
athors:
  john:
    name : John Smith
    email: john@smith.com

# example-1.md
---
title: Example 1
author: john
---

# example-2.md
---
title: Example 2
author: john
---
```

If you specify an hash in your page or if the config file doesn't contain the name you have specified, it will use the default behavior (without breaking anything).

### How to use it ?

#### Install it

chdir to your ruhoh blog repository path

`git submodule add git://github.com/mikamai/ruhoh-multiple_authors.git plugins/multiple_authors`

or download files and put it to `your-blog-path/plugins/multiple_authors`


#### Fill your authors info

open `your-blog-path/config.yml` and add an author hash like in the following example:

```yml
authors:
  john:
    name : John Smith
    email: john@smith.com
    bio  : John Smith is the best author in the world
```


#### Use it

now when you create a page you can specify 'john' as the author, and you will get all the infos stored

```markdown
---
title : Example 1
author: john
---
```

In the page view you will now have access to `author.name`, `author.bio` and so on, like if you defined all the author infos by hand.