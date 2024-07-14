---
title: Crazyswarm2
subtitle: Tutorial at RSS in Delft
author: Kimberly McGuire (Bitcraze AB) and Wolfgang Hönig (TU Berlin)
date: July 19, 2024

theme: white

title-slide-attributes:
    data-background-image: media/title_white.svg
    data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

# Intro

## Who We Are

* TODO: picture from google slides

# A bit of history: Crazyswarm1

##
```{=html}
<iframe width="1600" height="600" src="https://www.youtube.com/embed/D0CrjoYDt9w?autoplay=1&mute=1" title="Crazyswarm: a large nano-quadcopter swarm (Sep. 2016)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
```

## History of Crazyswarm1

- Initial release 2016
- Flights with up to 49 Crazyflies
- Technical Insights
    - More autonomy on-board robots (EKF, nonlinear controller, basic planning)
    - Heavily rely on motion capture (custom frame-by-frame tracking) & radio broadcasts
- Widely used in research (as of 2022)

TODO add figure

TODO: put video side-by-side?

## Lessons Learned

- Support (and testing) is crucial for community acceptance
    - This tends to be a lot of work
- Debugging / failure analysis becomes much more difficult as number of robots increase
- Requirements by researchers vary a lot
    - On-board vs Off-board
    - Centralized vs Distributed
    - Fidelity vs Speed of Simulation
    - Heterogeneous robots
- Field moves towards full autonomy (larger robots, smaller team size)
    - Many papers cite Crazyswarm 1 as “negative example” (heavily centralized and dependent on motion capture)

# Crazyswarm2

## Design Focus

1. Clean ROS 2 Design
    - Independence of motion capture 
    - Better integration with ROS ecosystem

2. Simulation
    - Different fidelity/speed levels
    - Integration with other robots

3. Reliability
    - Online swarm monitoring
    - Automated tests

## Architecture

TODO: add pic from google slides

## Side Note: Motion Capture Tracking

- Robots have one or more markers (configuration can be identical)
    - Custom frame-by-frame tracking (w/ dynamics filter)
    - Support for many systems (OptiTrack, VICON, Qualisys, VRPN, …)
    - Initial position must be known

    TODO: add picture

- Separate ROS 2 package
https://github.com/IMRCLab/motion_capture_tracking
- Other supported tracking methods: LightHouse, UWB, (FlowDeck)

# Swarm Handling

## Crazyflie Server

## Swarm Monitoring

- Reasoning
- GUI explanation
- Status information sent
- Need picture

## Tabletop Demo

- DEMO -  Go through YAMl file and tabletop connect,
- DEMO - RQT plot or plotjuggler and RVIZ2
- DEMO - Table top connect and open up swarm monitoring gu

# Simulation

## Simulation

- Goals
    - Test before crash
    - Data collection for ML methods (IL or RL)
- Different physics backends
    - None (visualize desired motion), numpy, pinocchio, neuralswarm, …
- Different visualizations
    - Rviz, pdf, blender, …
- Implemented as a crazyflie_server (same ROS 2 API)
    - GUI and Python scripts work without changes
- Software-in-the-loop (SITL)

TODO: survey paper

TODO: pic

## Software-in-the-loop (SITL)

TODO: pic

## Simulation Demo 1: Swarm Setpoints

TODO: figure out if we can add and highlight code easily in the slides

## Simulation Demo 2: Downwash

# Python API

## Services and API wrapper

- Server setup ROS2
    - Command and logging topics
    - Command  Services
    - All crazyflie parameters
- This is done for each connected crazyflie and for all, which is a lot!
- Python ROS2 wrapper to simply scripting and behavior

TODO: pic

## Demo

- TODO: should show some example script at this point, e.g, the swap2?

# Application Examples

## Synchronized Data Collection With Collision Avoidance

- Show script (explain clock synchronization, data collection)

## Collaborative Payload Transport

- Mostly firmware changes
- Broadcasts for payload setpoints
    - Custom setpoint format (information about cables)

## Mapping Using Existing ROS 2 Packages

<!-- Most likely no real slides, but live demo's instead 
# Demos

## Assisted Teleop

(TODO: check if multi-joystick support works in the latest ROS version; goal: two joysticks and two robots)

## Figure 8

(All 5)
(reference to uav_trajectories for generation)

## Logging & Params

(Logging: perhaps something with plotjuggler?)
(Params: broadcast for all of them to play some music or change LEDs?)

## Simulation

(show interaction-aware swap example)

## Advanced 1

(distributed/slow computation?)
(collision avoidance?)
(formation control?)
-->

# Conclusion

## Future Work

1. Connection Link Issues (Cpp backend)
2. Scalability (number of robots)
    - GUI responsiveness
    - Python backend
    - Simulation w/ physics
    - Validation for > 5 robots
3. Heterogeneous Simulation
4. Release (motion_capture_tracking is already released)

## How To Get Support?

- GitHub Discussions for almost everything

    TODO: add picture

- GitHub Issue, if you are confident code changes are needed


## Crazyswarm2

::: {.container}
:::: {.col}
[?]{.r-fit-text}
::::
:::: {.col}
![](media/qrcode.png){width=300}
::::
:::