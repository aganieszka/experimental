
import QtQuick 1.0



Column {
	//anchors.centerIn: parent
	//spacing: parent.width/6

	Button {
		id: loadButton
		buttonColor: "lightgrey"
		label: "Load"
	}
	Button {
		id: saveButton
		buttonColor: "grey"
		label: "Save"
	}
	Button {
		id: exitButton
		buttonColor: "darkgrey"
		label: "Exit"
		onButtonClick: Qt.quit()
	}
}

