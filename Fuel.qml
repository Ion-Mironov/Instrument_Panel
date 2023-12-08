import QtQuick 2.15


Item {

	// Expose properties for external control
	property alias gaugeOpacity: fuel.opacity
	property alias gaugeScale: fuel.scale

	property alias needleOpacity: fuelNeedle.opacity
	property alias needleScale: fuelNeedle.scale
	property alias needleRotation: fuelNeedle.rotation

	property alias needleCupScale: fuelNeedleCup.scale


	// Gauge Face
	Image {
		id: fuel
		source: "assets/fuel_gauge.svg"
		width: 330
		height: 330
		z: 0
	}

	// Needle
	Image {
		id: fuelNeedle
		source: "assets/small_needle.svg"
		width: 20
		height: 128
		anchors.bottom: fuel.verticalCenter
		anchors.horizontalCenter: fuel.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -90
		z: 1
	}

	// Needle Cup
	Image {
		id: fuelNeedleCup
		source: "assets/small_needle_cup.svg"
		width: 82
		height: 82
		anchors.horizontalCenter: fuelNeedle.horizontalCenter
		anchors.verticalCenter: fuelNeedle.bottom
		rotation: fuelNeedle.rotation
		z: 2
	}
}
