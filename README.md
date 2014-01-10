storm-vagrant
=============

Vagrant config to create a virtualized Storm cluster

MayBe To-Do's
-------------

provison:
---------

<pre>
 $ vagrant up zoopkeeper 
 $ vagrant reload zoopkeeper 

 $ vagrant up nimbus
 $ vagrant reload nimbus

 $ vagrant up supervisor1
 $ vagrant reload supervisor1

 $ vagrant up supervisor2
 $ vagrant reload supervisor2
</pre>

checking:
---------

<pre>
 $ vagrant ssh zoopkeeper
 $ ps aux | grep zookepper

 $ vagrant ssh nimbus
 $ ps aux | grep storm

 $ vagrant ssh supervisor1
 $ ps aux | grep storm

 $ vagrant ssh supervisor1
 $ ps aux | grep storm
</pre>

html view:
----------

<pre>
 http://192.168.50.4:8080
</pre>

* manual forward nimbus

<pre> 
$ 	ssh -L 8080:localhost:8080 vagrant@44.44.44.4 -p22
</pre>

Testing a topology:
-------------------

storm-starter building:

<pre>

$ git clone https://github.com/nathanmarz/storm-starter.git

$ lein deps
$ lein compile

$ mvn mvn -f m2-pom.xml package

</pre>

storm-starter target deploy:

<pre>
$ mv target/storm-starter-0.0.1-SNAPSHOT-jar-with-dependencies.jar /path/to/this/project/storm-vagrant
</pre>

storm-starter run topology:

<pre>
$ vagrant ssh nimbus
$ cd /vagrant
$ storm jar storm-starter-0.0.1-SNAPSHOT-jar-with-dependencies.jar storm.starter.clj.word_count
</pre>


Thx for the fork goes to:
-------------------------

https://github.com/ptgoetz/storm-vagrant
