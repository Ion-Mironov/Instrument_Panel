import QtQuick 2.15
import QtQuick.Window 2.15
import "."

Window {
	id: mainWindow
	title: "Instrument Panel"
	visibility: Window.Maximized
	width: 1920
	height: 1080

	property real globalScale: 0.2

	// Background
	Image {
		id: background
		source: "assets/background.png"
		anchors.fill: parent
	}


	// Speedometer
	Speedo {
		id: speedoGauge
		x: 200
		y: 350
	}

	// Tachometer
	Tach {
		id: tachGauge
		x: 1000
		y: 350
	}

	// Fuel
	Fuel {
		id: fuelGauge
		x: 100
		y: 30
	}

	// Coolant Temp
	CoolantTemp {
		id: coolantTempGauge
		x: 500
		y: 30
	}

	// Voltage
	Voltage {
		id: voltageGauge
		x: 900
		y: 30
	}

	// Oil Pressure
	OilPressure {
		id: oilPressureGauge
		x: 1290
		y: 30
	}


	////	Vertical Lines setup		////
	// Left Vertical Line
	Rectangle {
		id: verticalLineLeft
		color: "white"
		width: 4
		height: 0
		x: mainWindow.width / 2 - width / 2				// Centers the item itself within the parent (without "- width/2", the item's left edge would be centered)
		y: mainWindow.height / 2 - height /2
		z: 3
	}

	// Right Vertical Line
	Rectangle {
		id: verticalLineRight
		color: "white"
		width: 4
		height: 0
		x: mainWindow.width / 2 - width / 2
		y: mainWindow.height / 2 - height /2
		z: 3
	}


	// Initialization. Initial visibility of gauge elements is 'false'.
	Component.onCompleted: {
		speedoGauge.visible = false;
		tachGauge.visible = false;
		fuelGauge.visible = false;
		coolantTempGauge.visible = false;
		voltageGauge.visible = false;
		oilPressureGauge.visible = false;

		lineAnim.start();
	}

	MouseArea {
		id: mouseArea
		anchors.fill: parent
		onClicked: {
			// Reset and hide lines
			verticalLineLeft.height = 0;
			verticalLineRight.height = 0;
			verticalLineLeft.y = mainWindow.height / 2;
			verticalLineRight.y = mainWindow.height / 2;
			verticalLineLeft.x = mainWindow.width / 2 - verticalLineLeft.width / 2;
			verticalLineRight.x = mainWindow.width / 2 - verticalLineRight.width / 2;

			// Reset and hide custom gauge components
			speedoGauge.visible = false;
			tachGauge.visible = false;
			fuelGauge.visible = false;
			coolantTempGauge.visible = false;
			voltageGauge.visible = false;
			oilPressureGauge.visible = false;

			// Reset needle rotation and stop animation
			speedoGauge.needleRotation = -135;
			tachGauge.needleRotation = -120;
			fuelGauge.needleRotation = -90;
			coolantTempGauge.needleRotation = -90;
			voltageGauge.needleRotation = -60;
			oilPressureGauge.needleRotation = -112;

			speedoSweep.stop();
			tachSweep.stop();
			fuelSweep.stop();
			coolantTempSweep.stop();
			voltageSweep.stop();
			oilPressureSweep.stop();

			// Restart line animation
			lineAnim.restart();
		}
	}


	////	Animations		////
	SequentialAnimation {
		id: lineAnim

		// Grow both lines simultaneously from the center
		ParallelAnimation {
			NumberAnimation {
				target: verticalLineLeft
				property: "height"
				to: mainWindow.height
				duration: 1000
			}
			NumberAnimation {
				target: verticalLineLeft
				property: "y"
				to: 0
				duration: 1000
			}

			NumberAnimation {
				target: verticalLineRight
				property: "height"
				to: mainWindow.height
				duration: 1000
			}
			NumberAnimation {
				target: verticalLineRight
				property: "y"
				to: 0
				duration: 1000
			}
		}

		// Slide both lines to the outer edges
		ParallelAnimation {
			NumberAnimation {
				target: verticalLineLeft
				property: "x"
				to: 0												// Move the left line to the left edge
				duration: 1000
			}
			
			NumberAnimation {
				target: verticalLineRight
				property: "x"
				to: mainWindow.width - verticalLineRight.width		// Move the right line to the right edge
				duration: 1000
			}
		}

		// After lines slide animation, make gauges visible with fade-in animation
		ScriptAction {
			script: {
				speedoGauge.visible = true;
				tachGauge.visible = true;
				fuelGauge.visible = true;
				coolantTempGauge.visible = true;
				voltageGauge.visible = true;
				oilPressureGauge.visible = true;

				gaugesFadeIn.start();
			}
		}
	}


	// Fade-in and enlarge gauges before doing needle sweeps
	SequentialAnimation {
		id: gaugesFadeIn

		PropertyAction {
			target: speedoGauge
			property: "visible"
			value: true
		}

		PropertyAction {
			target: tachGauge
			property: "visible"
			value: true
		}

		PropertyAction {
			target: fuelGauge
			property: "visible"
			value: true
		}

		PropertyAction {
			target: coolantTempGauge
			property: "visible"
			value: true
		}

		PropertyAction {
			target: voltageGauge
			property: "visible"
			value: true
		}

		PropertyAction {
			target: oilPressureGauge
			property: "visible"
			value: true
		}


		ParallelAnimation {

			// Speedometer group
			NumberAnimation {
				target: speedoGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: speedoGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: speedoGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: speedoGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: speedoGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}


			// Tachometer group
			NumberAnimation {
				target: tachGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: tachGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: tachGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: tachGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: tachGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}


			// Fuel gauge group
			NumberAnimation {
				target: fuelGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: fuelGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: fuelGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: fuelGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: fuelGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}


			// Coolant Temp group
			NumberAnimation {
				target: coolantTempGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: coolantTempGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: coolantTempGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: coolantTempGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: coolantTempGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}


			// Voltage group
			NumberAnimation {
				target: voltageGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: voltageGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: voltageGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: voltageGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: voltageGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}

			// Oil Pressure group
			NumberAnimation {
				target: oilPressureGauge
				property: "gaugeOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: oilPressureGauge
				property: "gaugeScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: oilPressureGauge
				property: "needleOpacity"
				from: 0
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: oilPressureGauge
				property: "needleScale"
				from: 0.8
				to: 1
				duration: 1000
			}
			NumberAnimation {
				target: oilPressureGauge
				property: "needleCupScale"
				from: 0.8
				to: 1
				duration: 1000
			}
		}


		// Trigger the needle sweep animations after the gauge fade-in animation
		ScriptAction {
			script: {
				speedoSweep.start();
				tachSweep.start();
				fuelSweep.start();
				coolantTempSweep.start();
				voltageSweep.start();
				oilPressureSweep.start();
			}
		}
	}


	// Sequential animations for the needle sweeps
	SequentialAnimation {
		id: speedoSweep
		loops: Animation.Infinite			// Loop the animation indefinitely for demo mode
		NumberAnimation {
			target: speedoGauge
			property: "needleRotation"
			from: -135
			to: 135
			duration: 2000					// How long it takes the needle to sweep to max value
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }	// How long to stay at 'max' before sweeping back
		NumberAnimation {
			target: speedoGauge
			property: "needleRotation"
			from: 135
			to: -135
			duration: 2000					// How long it takes the needle to sweep back to min value
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }	// How long to stay at 'min' before starting again
	}

	SequentialAnimation {
		id: tachSweep
		loops: Animation.Infinite
		NumberAnimation {
			target: tachGauge
			property: "needleRotation"
			from: -120
			to: 120
			duration: 2000	
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }
		NumberAnimation {
			target: tachGauge
			property: "needleRotation"
			from: 120
			to: -120
			duration: 2000
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }
	}

	SequentialAnimation {
		id: fuelSweep
		loops: Animation.Infinite
		NumberAnimation {
			target: fuelGauge
			property: "needleRotation"
			from: -90
			to: 90
			duration: 2000
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }
		NumberAnimation {
			target: fuelGauge
			property: "needleRotation"
			from: 90
			to: -90
			duration: 2000
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }
	}

	SequentialAnimation {
		id: coolantTempSweep
		loops: Animation.Infinite
		NumberAnimation {
			target: coolantTempGauge
			property: "needleRotation"
			from: -90
			to: 90
			duration: 2000
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }
		NumberAnimation {
			target: coolantTempGauge
			property: "needleRotation"
			from: 90
			to: -90
			duration: 2000
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }
	}

	SequentialAnimation {
		id: voltageSweep
		loops: Animation.Infinite
		NumberAnimation {
			target: voltageGauge
			property: "needleRotation"
			from: -60
			to: 60
			duration: 2000
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }
		NumberAnimation {
			target: voltageGauge
			property: "needleRotation"
			from: 60
			to: -60
			duration: 2000
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }
	}

	SequentialAnimation {
		id: oilPressureSweep
		loops: Animation.Infinite
		NumberAnimation {
			target: oilPressureGauge
			property: "needleRotation"
			from: -112
			to: 112
			duration: 2000
			easing.type: Easing.InOutQuad
		}

		PauseAnimation { duration: 250 }
		NumberAnimation {
			target: oilPressureGauge
			property: "needleRotation"
			from: 112
			to: -112
			duration: 2000
			easing.type: Easing.InOutQuad
		}
		PauseAnimation { duration: 250 }
	}
}
