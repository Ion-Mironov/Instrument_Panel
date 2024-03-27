import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


ApplicationWindow {
	title: "Instrument Panel"
	visibility: Window.Maximized
	width: 1920
	height: 1080

	property bool isTheme1: true					// Property to track the theme state

	Image {
		source: "images/background.svg"
		anchors.fill: parent
	}

	GridLayout {
		columns: 4
		rows: 2
		rowSpacing: 4
		columnSpacing: 4
		anchors.margins: 30
		anchors.fill: parent


		// === Fuel Gauge ========================================================================================================== //
		Image {
			id: fuel
			source: isTheme1 ? "images/fuel_gauge_black.svg" : "images/fuel_gauge_white.svg"		// Bind to the theme
			Layout.column: 0
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: fuelNeedle
				source: isTheme1 ? "images/small_needle_red.svg" : "images/small_needle_orange.svg"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -90
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: fuel.horizontalCenter
				anchors.bottom: fuel.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: fuelNeedle								// The target item to animate
						from: fuelNeedle.rotation						// Start from defined rest position
						to: 90											// Rotate to max position
						duration: 2000									// Duration of the animation in milliseconds
						easing.type: Easing.InOutQuad					// Easing type for a smooth animation
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: fuelNeedle
						from: 90
						to: fuelNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: fuelNeedleCup
				source: isTheme1 ? "images/small_needle_cup_black.svg" : "images/small_needle_cup_grey"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: fuelNeedle.rotation
				anchors.horizontalCenter: fuelNeedle.horizontalCenter
				anchors.verticalCenter: fuelNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: fuelNeedleCup
						from: fuelNeedleCup.rotation
						to: 90
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: fuelNeedleCup
						from: 90
						to: fuelNeedleCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}


		// === Coolant Temp. Gauge ================================================================================================= //
		Image {
			id: coolantTemp
			source: isTheme1 ? "images/temp_gauge_black.svg" : "images/temp_gauge_white.svg"
			Layout.column: 1
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: coolantTempNeedle
				source: isTheme1 ? "images/small_needle_red.svg" : "images/small_needle_orange.svg"
				Layout.column: 1
				Layout.row: 0
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -90
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: coolantTemp.horizontalCenter
				anchors.bottom: coolantTemp.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: coolantTempNeedle
						from: coolantTempNeedle.rotation
						to: 90
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: coolantTempNeedle
						from: 90
						to: coolantTempNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: coolantTempCup
				source: isTheme1 ? "images/small_needle_cup_black.svg" : "images/small_needle_cup_grey"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: coolantTempNeedle.rotation
				anchors.horizontalCenter: coolantTempNeedle.horizontalCenter
				anchors.verticalCenter: coolantTempNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: coolantTempCup
						from: coolantTempCup.rotation
						to: 90
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: coolantTempCup
						from: 90
						to: coolantTempCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}


		// === Volt Gauge ========================================================================================================== //
		Image {
			id: voltage
			source: isTheme1 ? "images/volt_gauge_black.svg" : "images/volt_gauge_white.svg"
			Layout.column: 2
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: voltageNeedle
				source: isTheme1 ? "images/small_needle_red.svg" : "images/small_needle_orange.svg"
				Layout.column: 2
				Layout.row: 0
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -60
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: voltage.horizontalCenter
				anchors.bottom: voltage.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: voltageNeedle
						from: voltageNeedle.rotation
						to: 60
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: voltageNeedle
						from: 60
						to: voltageNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: voltageNeedleCup
				source: isTheme1 ? "images/small_needle_cup_black.svg" : "images/small_needle_cup_grey"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: voltageNeedle.rotation
				anchors.horizontalCenter: voltageNeedle.horizontalCenter
				anchors.verticalCenter: voltageNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: voltageNeedleCup
						from: voltageNeedleCup.rotation
						to: 60
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: voltageNeedleCup
						from: 60
						to: voltageNeedleCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}


		// === Oil Pressure Gauge ================================================================================================== //
		Image {
			id: oilPressure
			source: isTheme1 ? "images/oil_gauge_black.svg" : "images/oil_gauge_white.svg"
			Layout.column: 3
			Layout.row: 0
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: oilPressureNeedle
				source: isTheme1 ? "images/small_needle_red.svg" : "images/small_needle_orange.svg"
				Layout.column: 3
				Layout.row: 0
				width: parent.width * 0.35
				height: parent.height * 0.35
				fillMode: Image.PreserveAspectFit
				rotation: -112
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: oilPressure.horizontalCenter
				anchors.bottom: oilPressure.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: oilPressureNeedle
						from: oilPressureNeedle.rotation
						to: 112.5
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: oilPressureNeedle
						from: 112.5
						to: oilPressureNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: oilPressureNeedleCup
				source: isTheme1 ? "images/small_needle_cup_black.svg" : "images/small_needle_cup_grey"
				Layout.column: 0
				Layout.row: 0
				width: parent.width * 0.2
				height: parent.height * 0.2
				fillMode: Image.PreserveAspectFit
				rotation: oilPressureNeedle.rotation
				anchors.horizontalCenter: oilPressureNeedle.horizontalCenter
				anchors.verticalCenter: oilPressureNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: oilPressureNeedleCup
						from: oilPressureNeedleCup.rotation
						to: 112.5
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: oilPressureNeedleCup
						from: 112.5
						to: oilPressureNeedleCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}


		// === Speedometer ========================================================================================================= //
		Image {
			id: speedo
			source: isTheme1 ? "images/speedometer_black.svg" : "images/speedometer_white.svg"
			Layout.column: 0
			Layout.columnSpan: 2
			Layout.row: 1
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: speedoNeedle
				source: isTheme1 ? "images/big_needle_red.svg" : "images/big_needle_orange.svg"
				Layout.column: 0
				Layout.columnSpan: 2
				Layout.row: 1
				width: parent.width * 0.35
				height: parent.height * 0.37
				fillMode: Image.PreserveAspectFit
				rotation: -134.5
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: speedo.horizontalCenter
				anchors.bottom: speedo.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: speedoNeedle
						from: speedoNeedle.rotation
						to: 135.5
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: speedoNeedle
						from: 135.5
						to: speedoNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: speedoNeedleCup
				source: isTheme1 ? "images/big_needle_cup_black.svg" : "images/big_needle_cup_grey"
				Layout.column: 0
				Layout.row: 1
				width: parent.width * 0.15
				height: parent.height * 0.15
				fillMode: Image.PreserveAspectFit
				rotation: speedoNeedle.rotation
				anchors.horizontalCenter: speedoNeedle.horizontalCenter
				anchors.verticalCenter: speedoNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: speedoNeedleCup
						from: speedoNeedleCup.rotation
						to: 135.5
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: speedoNeedleCup
						from: 135.5
						to: speedoNeedleCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}


		// === Tachometer ========================================================================================================== //
		Image {
			id: tach
			source: isTheme1 ? "images/tachometer_black.svg" : "images/tachometer_white.svg"
			Layout.column: 2
			Layout.columnSpan: 2
			Layout.row: 1
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
			z: 0

			Image {
				id: tachNeedle
				source: isTheme1 ? "images/big_needle_red.svg" : "images/big_needle_orange.svg"
				Layout.column: 2
				Layout.columnSpan: 2
				Layout.row: 1
				width: parent.width * 0.35
				height: parent.height * 0.37
				fillMode: Image.PreserveAspectFit
				rotation: -119.5
				transformOrigin: Item.Bottom
				anchors.horizontalCenter: tach.horizontalCenter
				anchors.bottom: tach.verticalCenter
				z: 1

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: tachNeedle
						from: tachNeedle.rotation
						to: 120
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: tachNeedle
						from: 120
						to: tachNeedle.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}

			Image {
				id: tachNeedleCup
				source: isTheme1 ? "images/big_needle_cup_black.svg" : "images/big_needle_cup_grey"
				Layout.column: 2
				Layout.row: 1
				width: parent.width * 0.15
				height: parent.height * 0.15
				fillMode: Image.PreserveAspectFit
				rotation: tachNeedle.rotation
				anchors.horizontalCenter: tachNeedle.horizontalCenter
				anchors.verticalCenter: tachNeedle.bottom
				z: 2

				SequentialAnimation {
					loops: Animation.Infinite

					RotationAnimation {
						target: tachNeedleCup
						from: tachNeedleCup.rotation
						to: 120
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					RotationAnimation {
						target: tachNeedleCup
						from: 120
						to: tachNeedleCup.rotation
						duration: 2000
						easing.type: Easing.InOutQuad
					}

					PauseAnimation { duration: 250 }

					running: true
				}
			}
		}
	}
	Button {
		text: isTheme1 ? "Switch to White Theme" : "Switch to Black Theme"
		anchors.margins: 20
		anchors.bottom: parent.bottom
		anchors.horizontalCenter: parent.horizontalCenter

		onClicked: {
			isTheme1 = !isTheme1; // Toggle theme state
		}
	}
}
