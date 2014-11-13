---
layout: post
title: "Rails Console Display SQL Query"
date: 2014-11-03 16:42:52 +0700
comments: true
categories: [rails, ruby]
tags: [rails, ruby]
thumbnail:
---
Did you know that you can show your *executed query* in your `Rails Console`. If you have ever face problem and want to see the query or even debug your query, you can activate it in your `Rails Console`. Simply execute this code in the `Rails Console` : 

```
ActiveRecord::Base.logger = Logger.new(STDOUT)
```

That command will print logger in your `Rails Console`. If that command don't work you can try to clear base connection first

```
ActiveRecord::Base.connection_pool.clear_reloadable_connections!
```

Just try something as usual like `User.all` if you have model `User`.

Is that work now?

