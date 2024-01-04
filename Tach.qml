import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: tachNeedle.rotation


	// Gauge Face
	Image {
		id: tach
		source: "assets/tach_gauge.svg"
		fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: tachNeedle
		source: "assets/big_needle.svg"
		anchors.bottom: tach.verticalCenter
		anchors.horizontalCenter: tach.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -120
		// fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: tachNeedleCup
		source: "assets/big_needle_cup.svg"
		anchors.horizontalCenter: tachNeedle.horizontalCenter
		anchors.verticalCenter: tachNeedle.bottom
		rotation: tachNeedle.rotation
		// fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
