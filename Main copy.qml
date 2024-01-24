import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "."


ApplicationWindow {
	title: "Instrument Panel"
	visibility: Window.Maximized
	width: 1920
	height: 1080

	Image {
		source: "assets/background.svg"
		anchors.fill: parent
	}

	GridLayout {
		columns: 4
		rows: 2
		anchors.fill: parent

		Fuel {
			id: fuelGauge
			Layout.column: 0
			Layout.row: 0
		}

		CoolantTemp {
			id: coolantTempGauge
			Layout.column: 1
			Layout.row: 0
		}

		Voltage {
			id: voltageGauge
			Layout.column: 2
			Layout.row: 0
		}

		OilPressure {
			id: oilPressureGauge
			Layout.column: 3
			Layout.row: 0
		}

		Speedo {
			id: speedoGauge
			Layout.column: 0
			Layout.row: 1
		}

		Item {
			Layout.column: 1
			Layout.row: 1
		}

		Tach {
			id: tachGauge
			Layout.column: 2
			Layout.row: 1
		}

		Item {
			Layout.column: 3
			Layout.row: 1
		}
	}

/* 
	// Animations for the needle sweeps
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
*/

	Component.onCompleted: {
		speedoGauge.visible = true;
		tachGauge.visible = true;
		fuelGauge.visible = true;
		coolantTempGauge.visible = true;
		voltageGauge.visible = true;
		oilPressureGauge.visible = true;

		// speedoSweep.start();
		// tachSweep.start();
		// fuelSweep.start();
		// coolantTempSweep.start();
		// voltageSweep.start();
		// oilPressureSweep.start();
	}
}
