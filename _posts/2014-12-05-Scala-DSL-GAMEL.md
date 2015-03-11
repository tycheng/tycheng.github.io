---
layout: post
title: GAMEL - Game Script Using Scala DSL
banner: /img/posts/gamel/banner.jpg
tags: ['Scala', 'DSL']
---

GAMEL - Game Script Using Scala DSL
===================================

This is a group project which intends to facilitate simple game developing with the advantage of Scala DSL.

Thanks to Mark Mansi for proposing this idea. 

In this project, we cooperatively designed the syntax for basic game designing. The fundamental elements in the DSL consists of the following:

+ Entity
+ Instance
+ Action
+ Scene

Entity is the prototype/class of objects. One can define an entity with default attributes. The syntax is the following:

    define a new entity {
      ...
    }


Instance is the object created using the entity types. One can create an instance using some specific entity, which allows the instance to inherit attributes. Similar to OOP, one can override attributes and actions in the instance. The syntax is the following:


    create a new instance {
      ...
    }

Action is the things an instance can do. For example, a player could have an action called punch. In our design, the core of action is a user-defined function which takes in an array of arguments. The action could either be triggered under specified conditions, or triggered manually by "does". The syntax is the following:

    // create an action called fooing
    define a new action {
        name = 'fooing
        action = <function>
    }
    // create a Foo called foo
    create a new instance {
        name = 'foo
        actions += ('fooing)
    } of 'Foo
    'foo does 'fooing using (<parameters>) // trigger the fooing action of Foo
                                           // on the entity instance foo


Scene is an special instance which contains all other instances.


Details in [Github](https://github.com/gamel/gamel)

