---
title: Crazyswarm2
subtitle: Tutorial at RSS in Delft
author: Kimberly McGuire (Bitcraze AB) and Wolfgang Hönig (TU Berlin)
date: July, 2024

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

# A bit of history: Crazyswarm1

##
```{=html}
<iframe width="1600" height="600" src="https://www.youtube.com/embed/D0CrjoYDt9w?autoplay=1&mute=1" title="Crazyswarm: a large nano-quadcopter swarm (Sep. 2016)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
```

## Key Highlights

(perhaps recycle some of the plots from the last talk about user-base)

Support is key

<!-- Explain from scratch, i.e., without reference to Crazyswarm1 -->
# Overview

## Architecture

(picture from webpage)

## Robot Tracking

(motion_capture_tracking package)

<!-- Most likely no real slides, but live demo's instead -->
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

# Conclusion

## Roadmap

1. Communication link issues
2. Scalability validation
3. More simulation backends
4. Release 

## Crazyswarm2

::: {.container}
:::: {.col}
[?]{.r-fit-text}
::::
:::: {.col}
![](media/qrcode.png){width=300}
::::
:::