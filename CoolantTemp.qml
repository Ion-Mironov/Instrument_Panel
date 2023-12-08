import QtQuick 2.15


Item {

	// Expose properties for external control
	property alias gaugeOpacity: coolantTemp.opacity
	property alias gaugeScale: coolantTemp.scale

	property alias needleOpacity: coolantTempNeedle.opacity
	property alias needleScale: coolantTempNeedle.scale
	property alias needleRotation: coolantTempNeedle.rotation

	property alias needleCupScale: coolantTempCup.scale


	// Gauge Face
	Image {
		id: coolantTemp
		source: "assets/temp_gauge.svg"
		width: 330
		height: 330
		z: 0
	}

	// Needle
	Image {
		id: coolantTempNeedle
		source: "assets/small_needle.svg"
		width: 20
		height: 128
		anchors.bottom: coolantTemp.verticalCenter
		anchors.horizontalCenter: coolantTemp.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -90
		z: 1
	}

	// Needle Cup
	Image {
		id: coolantTempCup
		source: "assets/small_needle_cup.svg"
		width: 82
		height: 82
		anchors.horizontalCenter: coolantTempNeedle.horizontalCenter
		anchors.verticalCenter: coolantTempNeedle.bottom
		rotation: coolantTempNeedle.rotation
		z: 2
	}
}
