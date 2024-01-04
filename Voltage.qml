import QtQuick


Item {

	// Expose properties for external control
	// property alias needleRotation: voltageNeedle.rotation


	// Gauge Face
	Image {
		id: voltage
		source: "assets/volt_gauge.svg"
		fillMode: Image.PreserveAspectFit
		z: 0
	}

/* 	// Needle
	Image {
		id: voltageNeedle
		source: "assets/small_needle.svg"
		anchors.bottom: voltage.verticalCenter
		anchors.horizontalCenter: voltage.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -60
		// fillMode: Image.PreserveAspectFit
		z: 1
	}

	// Needle Cup
	Image {
		id: voltageNeedleCup
		source: "assets/small_needle_cup.svg"
		anchors.horizontalCenter: voltageNeedle.horizontalCenter
		anchors.verticalCenter: voltageNeedle.bottom
		rotation: voltageNeedle.rotation
		// fillMode: Image.PreserveAspectFit
		z: 2
	} */
}
