import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


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
		rowSpacing: 15
		columnSpacing: 15
		anchors.fill: parent

		Image {
			Layout.column: 0
			Layout.row: 0
			source: "assets/fuel_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}

		Image {
			Layout.column: 1
			Layout.row: 0
			source: "assets/temp_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}

		Image {
			Layout.column: 2
			Layout.row: 0
			source: "assets/volt_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}

		Image {
			Layout.column: 3
			Layout.row: 0
			source: "assets/oil_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}

		Image {
			Layout.column: 0
			Layout.columnSpan: 2
			Layout.row: 1
			source: "assets/speedo_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}

		Image {
			Layout.column: 2
			Layout.columnSpan: 2
			Layout.row: 1
			source: "assets/tach_gauge.svg"
			Layout.fillHeight: true
			Layout.fillWidth: true
			fillMode: Image.PreserveAspectFit
		}
	}
}
