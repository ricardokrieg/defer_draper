defer_draper
============

Decorate your instance variables before render

Installation
============

```
gem 'defer_draper'
```

Usage
=====

Add **before_filter :decorate_all** in controllers you want to decorate.It accepts regular filter options, as :only, :except, etc

``` ruby
before_filter :decorate_all, only: [:index, :show]
```

All instance variables (starting with @) that have a decorator will be decorated before they are avaiable in the view.

TODO
====

* Add a option to select what variables to decorate 
    * decorate_all exclude: [:foo, :bar] # decorates all except @foo and @bar
    * decorate_all include: [:foo] # decorates only @foo
* RSpec
