import QtQuick 2.15
import QtQuick.Window 2.15


Window {
	id: mainWindow
	title: "Line Animation Test"
	visible: true
	color: "white"
	width: 1024
	height: 700

	Rectangle {
		anchors.fill: parent
		color: "transparent"
		border.color: "red"
		border.width: 2


		Rectangle {
			id: verticalLineLeft
			color: "black"
			width: 2
			height: 0
			x: mainWindow.width / 2 - width / 2				// Centers the item itself within the parent (without "- width/2", the item's left edge would be centered)
			y: mainWindow.height / 2 - height /2
		}

		Rectangle {
			id: verticalLineRight
			color: "black"
			width: 2
			height: 0
			x: mainWindow.width / 2 - width / 2
			y: mainWindow.height / 2 - height /2
		}

		MouseArea {
			id: mouseArea
			anchors.fill: parent
			onClicked: {
				// Reset properties before restarting animation
                verticalLineLeft.height = 0;
                verticalLineRight.height = 0;
                verticalLineLeft.y = mainWindow.height / 2;
                verticalLineRight.y = mainWindow.height / 2;
                verticalLineLeft.x = mainWindow.width / 2 - verticalLineLeft.width / 2;
                verticalLineRight.x = mainWindow.width / 2 - verticalLineRight.width / 2;
                lineAnim.restart();
			}
		}

		SequentialAnimation {
			id: lineAnim

			// First, grow both lines simultaneously from the center
			ParallelAnimation {
				NumberAnimation {
					target: verticalLineLeft
					property: "height"
					to: mainWindow.height
					duration: 1000
				}
				NumberAnimation {
					target: verticalLineLeft
					property: "y"
					to: 0
					duration: 1000
				}

				NumberAnimation {
					target: verticalLineRight
					property: "height"
					to: mainWindow.height
					duration: 1000
				}
				NumberAnimation {
					target: verticalLineRight
					property: "y"
					to: 0
					duration: 1000
				}
			}

			// Next, slide both lines to the edges
			ParallelAnimation {
				NumberAnimation {
					target: verticalLineLeft
					property: "x"
					to: 0  // Move the left line to the left edge
					duration: 1000
				}
				NumberAnimation {
					target: verticalLineRight
					property: "x"
					to: mainWindow.width - verticalLineRight.width  // Move the right line to the right edge
					duration: 1000
				}
			}
		}
	}
}
