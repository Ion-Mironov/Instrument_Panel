import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


ApplicationWindow {
	title: "Instrument Panel"
	visibility: Window.Maximized
	width: 1920
	height: 1080

	Image {
		source: "images/background.svg"
		anchors.fill: parent
	}

	GridLayout {
		columns: 4
		rows: 2
		rowSpacing: 15
		columnSpacing: 15
		anchors.fill: parent


		// === Fuel Gauge ================================================================================= //
		Image {
			id: fuel
			source: "images/fuel_gauge.svg"
			Layout.column: 0
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: fuelNeedle
				source: "images/small_needle.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.3
				height: parent.height * 0.3
				fillMode: Image.PreserveAspectFit
				rotation: -90
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: fuel.horizontalCenter
				anchors.bottom: fuel.verticalCenter
				z: 1
			}

			Image {
				id: fuelNeedleCup
				source: "images/small_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: fuelNeedle.rotation
				anchors.horizontalCenter: fuelNeedle.horizontalCenter
				anchors.verticalCenter: fuelNeedle.bottom
				z: 2
			}
		}


		// === Coolant Temp. Gauge ======================================================================= //
		Image {
			id: coolantTemp
			source: "images/temp_gauge.svg"
			Layout.column: 1
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: coolantTempNeedle
				source: "images/small_needle.svg"
				Layout.column: 1
				Layout.row: 0
				width: parent.width * 0.3
				height: parent.height * 0.3
				fillMode: Image.PreserveAspectFit
				rotation: -90
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: coolantTemp.horizontalCenter
				anchors.bottom: coolantTemp.verticalCenter
				z: 1
			}

			Image {
				id: coolantTempCup
				source: "images/small_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: coolantTempNeedle.rotation
				anchors.horizontalCenter: coolantTempNeedle.horizontalCenter
				anchors.verticalCenter: coolantTempNeedle.bottom
				z: 2
			}
		}


		// === Volt Gauge ================================================================================ //
		Image {
			id: voltage
			source: "images/volt_gauge.svg"
			Layout.column: 2
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: voltageNeedle
				source: "images/small_needle.svg"
				Layout.column: 2
				Layout.row: 0
				width: parent.width * 0.3
				height: parent.height * 0.3
				fillMode: Image.PreserveAspectFit
				rotation: -60
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: voltage.horizontalCenter
				anchors.bottom: voltage.verticalCenter
				z: 1
			}

			Image {
				id: voltageNeedleCup
				source: "images/small_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: voltageNeedle.rotation
				anchors.horizontalCenter: voltageNeedle.horizontalCenter
				anchors.verticalCenter: voltageNeedle.bottom
				z: 2
			}
		}


		// === Oil Pressure Gauge ======================================================================== //
		Image {
			id: oilPressure
			source: "images/oil_gauge.svg"
			Layout.column: 3
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: oilPressureNeedle
				source: "images/small_needle.svg"
				Layout.column: 3
				Layout.row: 0
				width: parent.width * 0.3
				height: parent.height * 0.3
				fillMode: Image.PreserveAspectFit
				rotation: -112
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: oilPressure.horizontalCenter
				anchors.bottom: oilPressure.verticalCenter
				z: 1
			}

			Image {
				id: oilPressureNeedleCup
				source: "images/small_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: oilPressureNeedle.rotation
				anchors.horizontalCenter: oilPressureNeedle.horizontalCenter
				anchors.verticalCenter: oilPressureNeedle.bottom
				z: 2
			}
		}


		// === Speedometer =============================================================================== //
		Image {
			id: speedo
			source: "images/speedo_gauge.svg"
			Layout.column: 0
			Layout.columnSpan: 2
			Layout.row: 1
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: speedoNeedle
				source: "images/big_needle.svg"
				Layout.column: 0
				Layout.columnSpan: 2
				Layout.row: 1
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -134.5
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: speedo.horizontalCenter
				anchors.bottom: speedo.verticalCenter
				z: 1
			}

			Image {
				id: speedoNeedleCup
				source: "images/big_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.15
				height: parent.height * 0.15
				fillMode: Image.PreserveAspectFit
				rotation: speedoNeedle.rotation
				anchors.horizontalCenter: speedoNeedle.horizontalCenter
				anchors.verticalCenter: speedoNeedle.bottom
				z: 2
			}
		}


		// === Tachometer ================================================================================ //
		Image {
			id: tach
			source: "images/tach_gauge.svg"
			Layout.column: 2
			Layout.columnSpan: 2
			Layout.row: 1
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: tachNeedle
				source: "images/big_needle.svg"
				Layout.column: 0
				Layout.columnSpan: 2
				Layout.row: 1
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -119.5
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: tach.horizontalCenter
				anchors.bottom: tach.verticalCenter
				z: 1
			}

			Image {
				id: tachNeedleCup
				source: "images/big_needle_cup.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.15
				height: parent.height * 0.15
				fillMode: Image.PreserveAspectFit
				rotation: tachNeedle.rotation
				anchors.horizontalCenter: tachNeedle.horizontalCenter
				anchors.verticalCenter: tachNeedle.bottom
				z: 2
			}
		}
	}
}
