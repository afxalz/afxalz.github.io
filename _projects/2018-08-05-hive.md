---
layout: page
title: "HIVE"
author: "Afzal Ahmad"
category: fun
projectlink: https://github.com/afzalhmd14/HIVE
importance: 1
img: assets/img/projects/hive_thumbnail.jpg
---
**Intelligent Swarm System**

<div class="container">
  <div class="row">
    <div class="col-7">
      <p style='text-align: justify;'>
      Hive (a name for collection of bees), is a group of autonomous robots designed to perform tasks in a collaborative manner. The robots are designed to search for objects in an indoor environment and assemble at a particular point. The focus of the project is on making a simple yet intelligent system of multiple robots that showcases <i> Swarm Intelligence </i>.
      </p>
    </div>
    <div class="col" style="text-align: center;">
      <img src="/assets/img/projects/hive_1.jpg" style="width:400px;height:250px;" />   
    </div>
  </div>
</div>

**Is it a Swarm system or a multi-robot system ?**
<p style='text-align: justify;'>
As per the definitions coined by Zhong-yang ZHENG in his paper on Swarm Intelligence, Hive can be considered a Swarm system. All the robots in Hive are independent and homogeneous in all senses. There is no Master-Slave correspondence. The software design is robust to the number of robots in the group thus making the system easily extensible.
</p>

## Algorithms

**Collaborative Search**

A modified form of Particle Swarm Optimisation algorithm is implemented to search the environment.The robots search their neighbouring environment for a particular type of stimuli and store information for Mapping. 

**Rendezvous Algorithm**
<div class="container">
  <div class="row">
    <div class="col-7">
      <p style='text-align: justify;'>
      A custom designed rendezvous algorithm is used for successful aggregation of robots. The range sensors search for other objects in a local area around the robot. The robot then moves towards the closest object found. The decision is updated continuously which helps the robot in differentiating between a fellow bot and a passive object.
      </p>
    </div>
    <div class="col" style="text-align: center;">
      <img src="/assets/img/projects/hive_2.png" style="width:440px;height:330px;"/>  
    </div>
  </div>
</div>

## Design

<div class="container">
  <div class="row">
    <div class="col-7">
      The body of the robot was designed on <b> SolidWorks CAD software </b> and cut out of 4mm Plexi-glass sheet.
      The robot is powered by <b> ATmega328u Micro-controller </b>.
      <br/>
      Each robot consists of:
      <ul>
      <li> 2x Stepper DC motors </li>
      <li> 6x Ultrasonic range sensors </li>
      <li> 2x Motor driver modules </li>
      </ul>
    </div>
    <div class="col" style="text-align: center;">
      <img src="/assets/img/projects/hive_3.jpg" style="width:300px;height:330px;" aling="center" /> 
    </div>
  </div>
</div>

## Demonstration
<br/>

<div class="container">
  <div class="row">
    <div class="col">
      <div class="thecap" align="middle" ><b>Testing the range sensors</b> </div>
      <iframe width="540" height="350" src="https://www.youtube.com/embed/bafYjByexFc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen align="center"></iframe>
     </div>
    <div class="col" style="text-align: center;">
      <div class="thecap" align="middle" ><b>Rendezvous demonstration</b> </div>
      <iframe width="540px" height="350px" src="https://www.youtube.com/embed/POwtcVPyVss?rel=0&controls=1&utoplay=1&loop=1&rel=0&showinfo=0" frameborder="0" allowfullscreen></iframe>
    </div>
  </div>
</div>
