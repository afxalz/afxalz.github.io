---
layout: page
title: "ASROA"
category: fun
projectlink: https://github.com/afzalhmd14/Snakebot
importance: 1
img: assets/img/projects/asroa_thumbnail.jpg
---
## Autonomous Snake Robot for Obstacle Avoidance

Nature has inspired many robot designs. Some of the best examples include [Cheetah](http://news.mit.edu/2015/cheetah-robot-lands-running-jump-0529), [WildCat](https://www.bostondynamics.com/wildcat) and [Modular Snake Robot](http://biorobotics.ri.cmu.edu/projects/modsnake/). Learning to explore and react to the environment has been a major part of research on these robots. 

<p style='text-align: justify;'>
This project is an attempt to make a simple-to-build snake robot that can learn to avoid obstacles. This project was completed under the guidance of <b> Dr. Prithwijit Guha </b> at Indian Institute of Technology Guwahati (IITG). The detailed report is available <a href="#pdf">here</a>.															
</p>

## Problem statment
<p style='text-align: justify;'>
A snake has several types of moving techniques including side-winding, serpentine and rectilinear motion. Our work focuses on serpentine motion where a snake can use obstacles as suppport to move around. The serpentine motion is goverened by a controller that takes in several parameters as input. Given these parameters one can generate a variety of motion from the snake. But these parameters have to be manually tuned for a certain type of motion. Taking inspiration from a real snake, we try to move the simulated robot through an obstacle-filled map. This will require the snake to change it's motion depending upon the sensor data from the environment. We hypothesise that this sensor data along with the knowledge of the previous move can be used to predict the upcoming moves for the robot. 
</p>

## Method
<p style='text-align: justify;'>
As there was no open source design available for our snake robot, we start our work with designing a simulated snake robot for training and testing our algorithms. We designed our robot using V-rep simulation software. We further tune the simulated robot by changing the design parameters. 
We also need a global path planner to achieve autonomous navigation in an obstacle map. We use watershed algorithm to solve this problem. The approach is similar to vornoi diagrams that generates several possible paths through a given map. These are then used by the snake robot to generate data.
</p>

<img src="/assets/img/projects/asroa_1.png" style="float:right;width:350px;height:300px;border-color: white" border="4"/>   

We proposed the following approaches to design a predictive model for our robot. 

* Finding correlation between sensor data and control parameters of the serpenoid curve using k-means clustering.

* Using ARMA model to predict the control parameters by treating it as a time series (signal processing based approach).

* Using a recurrent neural network to predict control parameters (machine learning based approach).

<br>
	
## Simulation 
<p style='text-align: justify;'>
	The snake and it's environment is designed on the Virtual Robot Experimentation Platform (V-rep). The design of the robot is based on the available material and components required to make a real robot. This will make it easier to reproduce the test results on a real snake robot. 
	<div style="float:left;margin:0 10px 5px 0;">
		<iframe width="441" height="278" src="https://www.youtube.com/embed/-zKmTJUTa3k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
		</iframe>
	</div>
The snake robot uses serpenoid curve as its control scheme. This serpenoid curve is used to generate serpentine motion in the robot. The serpenoid curve was originally introduced by <a href ="https://dl.acm.org/citation.cfm?id=562623">Hirose</a> to approximate the the serpentine motion of a snake. We use the modified serpenoid curve.
</p>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

## Path Planning  
<p style='text-align: justify;'>
	<img src="/assets/img/projects/asroa_2.png" style="float:right;width:350px;height:300px;border-color: white;margin:0 0 0 10px;" border="4"/>  
	We have used an image segmenting algorithm called watershed algorithm to segment the entire arena into sectors. The boundaries of these sectors have been taken as possible paths for the robot. Further details are mentioned in the <a href="#pdf">report</a>.

</p>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

## LSTM Model

<p style='text-align: justify;'>
From our observaton made during the simualtion of the snake robot, we found that the the "c" value or the heading direction of the robot depends upon the previous configuration of the robot and the sensor data of the present time-stamp. Thus, we try to design a recurrent neural network using an LSTM cell to predict the "c" value from the sensor values and control paramters of previous time-stamp. We use a single layer of 50 neurons, each nueron being an LSTM cell. 
</p>

<b> Input feature vector </b>: 17 sensor values and "c" value from previous time-stamp 
<br/>
<b> Output of network </b>: "c" value for current time-stamp
<br/>
**Results:**  
_Trainig Loss: 0.0019_  
_Testing Loss: 0.0025_

## Demonstration

<div class="imgcap">
<div align="middle">
<div class="thecap" align="middle" ><b>Autonomous Navigation Using Path Planning</b> </div>
<iframe width="700" height="400" src="https://www.youtube.com/embed/W7V0BaGdjgE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>


<div id="pdf">
<iframe class="scribd_iframe_embed" title="asroa" src="https://www.scribd.com/embeds/385489123/content?start_page=1&view_mode=scroll&access_key=key-pd7T40nAx8ISK9CaSAvZ&show_recommendations=true" data-auto-height="false" data-aspect-ratio="0.7068965517241379" scrolling="no" id="doc_57066" width="100%" height="600" frameborder="0"></iframe>
</div>
