import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: speedoNeedle.rotation


	// Gauge Face
	Image {
		id: speedo
		source: "assets/speedo_gauge.svg"
		fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: speedoNeedle
		source: "assets/big_needle.svg"
		anchors.bottom: speedo.verticalCenter
		anchors.horizontalCenter: speedo.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -135
		fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: speedoNeedleCup
		source: "assets/big_needle_cup.svg"
		anchors.horizontalCenter: speedoNeedle.horizontalCenter
		anchors.verticalCenter: speedoNeedle.bottom
		rotation: speedoNeedle.rotation
		fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
