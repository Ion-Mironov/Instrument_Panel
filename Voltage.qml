import QtQuick


Item {

	// Expose properties for external control
	property alias gaugeOpacity: voltage.opacity
	property alias gaugeScale: voltage.scale

	property alias needleOpacity: voltageNeedle.opacity
	property alias needleScale: voltageNeedle.scale
	property alias needleRotation: voltageNeedle.rotation

	property alias needleCupScale: voltageNeedleCup.scale


	// Gauge Face
	Image {
		id: voltage
		source: "assets/volt_gauge.svg"
		width: 380
		height: 380
		z: 0
	}

	// Needle
	Image {
		id: voltageNeedle
		source: "assets/small_needle.svg"
		width: 16
		height: 118
		anchors.bottom: voltage.verticalCenter
		anchors.horizontalCenter: voltage.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -60
		z: 1
	}

	// Needle Cup
	Image {
		id: voltageNeedleCup
		source: "assets/small_needle_cup.svg"
		width: 62
		height: 62
		anchors.horizontalCenter: voltageNeedle.horizontalCenter
		anchors.verticalCenter: voltageNeedle.bottom
		rotation: voltageNeedle.rotation
		z: 2
	}
}
