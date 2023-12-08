import QtQuick 2.15


Item {

	// Expose properties for external control
	property alias gaugeOpacity: oilPressure.opacity
	property alias gaugeScale: oilPressure.scale

	property alias needleOpacity: oilPressureNeedle.opacity
	property alias needleScale: oilPressureNeedle.scale
	property alias needleRotation: oilPressureNeedle.rotation

	property alias needleCupScale: oilPressureNeedle.scale


	// Gauge Face
	Image {
		id: oilPressure
		source: "assets/oil_gauge.svg"
		width: 330
		height: 330
		z: 0
	}

	// Needle
	Image {
		id: oilPressureNeedle
		source: "assets/small_needle.svg"
		width: 20
		height: 128
		anchors.bottom: oilPressure.verticalCenter
		anchors.horizontalCenter: oilPressure.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -112
		z: 1
	}

	// Needle Cup
	Image {
		id: oilPressureNeedleCup
		source: "assets/small_needle_cup.svg"
		width: 82
		height: 82
		anchors.horizontalCenter: oilPressureNeedle.horizontalCenter
		anchors.verticalCenter: oilPressureNeedle.bottom
		rotation: oilPressureNeedle.rotation
		z: 2
	}
}
