import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: fuelNeedle.rotation


	// Gauge Face
	Image {
		id: fuel
		source: "assets/fuel_gauge.svg"
		// fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: fuelNeedle
		source: "assets/small_needle.svg"
		anchors.bottom: fuel.verticalCenter
		anchors.horizontalCenter: fuel.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -90
		// fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: fuelNeedleCup
		source: "assets/small_needle_cup.svg"
		anchors.horizontalCenter: fuelNeedle.horizontalCenter
		anchors.verticalCenter: fuelNeedle.bottom
		rotation: fuelNeedle.rotation
		// fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
