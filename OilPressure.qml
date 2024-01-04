import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: oilPressureNeedle.rotation


	// Gauge Face
	Image {
		id: oilPressure
		source: "assets/oil_gauge.svg"
		fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: oilPressureNeedle
		source: "assets/small_needle.svg"
		anchors.bottom: oilPressure.verticalCenter
		anchors.horizontalCenter: oilPressure.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -112
		// fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: oilPressureNeedleCup
		source: "assets/small_needle_cup.svg"
		anchors.horizontalCenter: oilPressureNeedle.horizontalCenter
		anchors.verticalCenter: oilPressureNeedle.bottom
		rotation: oilPressureNeedle.rotation
		// fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
