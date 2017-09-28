# Human-Detector
Given an image, the system can detect human.

Input: An Image

Assumptions: 
The human is in standing position and facing the camera.
Image is not rotated.
Background is in contrast with human clothes.
The height of the person is standard i.e. it will not detect child.
There is only one person in the image.

Output: Yes or no.



Proposed Procedure:


First the image is smoothed, then we will apply some pre-defined masks and on the basis of that we will check whether human is present in image or not. We have a fixed core mask of chest area and head, but multiple masks for legs and arms because human can be moving his hands or legs.
