# FB15248296 - SwiftUI: AlignmentGuide in Overlay not working when in if block 

## Scenario

A SwiftUI view has an overlay with alignment: .top, the content uses .alignmentGuide(.top) {} to adjust the placement. 


## Issue

When the content of the overlay is in an if-block, the alignment guide is not adjusted.

	
## Example code

The example shows 2 views.

1. Not working example, where the content is an if-block.
2. Working example, where the content is not in an if-block

![screenshot](./screenshot.png)  


## Tested on

	- Xcode Version 16.0 RC (16A242) on iOS 18.0

