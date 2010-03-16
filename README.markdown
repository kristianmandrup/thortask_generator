h1. Thor Task Skeleton

A Thor based generator to rapidly create a new Thor Task project.

h2. Installation

Currently requires installation of my fork of the thor gem (0.13.5), or any fork building on this fork.

http://github.com/kristianmandrup/thor

<pre>  
$ git clone http://github.com/kristianmandrup/thor
$ cd thor
$ rake install
</pre> 

Then install the thor generator as a thor task!

<pre>  
$ git clone git@github.com:kristianmandrup/thortask_generator.git
$ cd thortask_generator  
$ thor install lib/thortask.thor
</pre>

h2. Usage

<pre>  
$ thor thortask mytask
</pre>  
  
Generates skeleton structure for new thor task project

h3. options

* --namespace : string indicating the namespace to place the tasks in 
  
<pre>  
$ thor thortask good --namespace project
</pre>  

Creates task project:good 

* --skip-rspec, --skip_cucumber, skip generation of skeleton tests using rspec and cucumber 

<pre>  
$ thor thortask good --namespace project --skip-rspec --skip_cucumber
</pre>  
  
Creates task project:good without any tests generated
 
h2. TODO 

Allow templates to be deployed within `~/.thor` in a `templates` dir for each task directory.

Example deployment structure:
<pre>
.thor
  + my_task
    + templates
    - main.thor

  + my_other_task
    + templates
    - main.thor
</pre>

h2. Community

Suggestions for improvement are welcome!