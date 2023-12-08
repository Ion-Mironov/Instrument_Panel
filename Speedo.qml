import QtQuick 2.15


Item {

	// Expose properties for external control
	property alias gaugeOpacity: speedo.opacity
	property alias gaugeScale: speedo.scale

	property alias needleOpacity: speedoNeedle.opacity
	property alias needleScale: speedoNeedle.scale
	property alias needleRotation: speedoNeedle.rotation

	property alias needleCupScale: speedoNeedleCup.scale


	// Gauge Face
	Image {
		id: speedo
		source: "assets/speedo_gauge.svg"
		width: 526
		height: 526
		z: 0
	}

	// Needle
	Image {
		id: speedoNeedle
		source: "assets/big_needle.svg"
		width: 26
		height: 220
		anchors.bottom: speedo.verticalCenter
		anchors.horizontalCenter: speedo.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -135
		z: 1
	}

	// Needle Cup
	Image {
		id: speedoNeedleCup
		source: "assets/big_needle_cup.svg"
		width: 86
		height: 86
		anchors.horizontalCenter: speedoNeedle.horizontalCenter
		anchors.verticalCenter: speedoNeedle.bottom
		rotation: speedoNeedle.rotation
		z: 2
	}
}
