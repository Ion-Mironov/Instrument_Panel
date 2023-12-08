import QtQuick 2.15


Item {

	// Expose properties for external control
	property alias gaugeOpacity: tach.opacity
	property alias gaugeScale: tach.scale

	property alias needleOpacity: tachNeedle.opacity
	property alias needleScale: tachNeedle.scale
	property alias needleRotation: tachNeedle.rotation

	property alias needleCupScale: tachNeedleCup.scale


	// Gauge Face
	Image {
		id: tach
		source: "assets/tach_gauge.svg"
		width: 526
		height: 526
		z: 0
	}

	// Needle
	Image {
		id: tachNeedle
		source: "assets/big_needle.svg"
		width: 26
		height: 220
		anchors.bottom: tach.verticalCenter
		anchors.horizontalCenter: tach.horizontalCenter
		transformOrigin: Item.Bottom
		rotation: -120
		z: 1
	}

	// Needle Cup
	Image {
		id: tachNeedleCup
		source: "assets/big_needle_cup.svg"
		width: 86
		height: 86
		anchors.horizontalCenter: tachNeedle.horizontalCenter
		anchors.verticalCenter: tachNeedle.bottom
		rotation: tachNeedle.rotation
		z: 2
	}
}
