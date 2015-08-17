
import QtQuick 1.0


Column {
	//anchors.centerIn: parent
	//spacing: parent.width/6

	Button {
		id: copyButton
		buttonColor: "lightgrey"
		label: "Copy"
	}
	Button {
		id: pasteButton
		buttonColor: "grey"
		label: "Paste"
	}
	Button {
		id: cutButton
		buttonColor: "darkgrey"
		label: "Cut"
	}
}
