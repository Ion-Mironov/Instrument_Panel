import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: coolantTempNeedle.rotation


	// Gauge Face
	Image {
		id: coolantTemp
		source: "assets/temp_gauge.svg"
		// fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: coolantTempNeedle
		source: "assets/small_needle.svg"
		anchors.bottom: coolantTemp.verticalCenter
		anchors.horizontalCenter: coolantTemp.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -90
		// fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: coolantTempCup
		source: "assets/small_needle_cup.svg"
		anchors.horizontalCenter: coolantTempNeedle.horizontalCenter
		anchors.verticalCenter: coolantTempNeedle.bottom
		rotation: coolantTempNeedle.rotation
		// fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
