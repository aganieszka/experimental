import QtQuick 1.0

Rectangle {
	id: simplebutton
	
	property color buttonColor : "lightblue"
	property color onHoverColor : "gold"
	property color borderColor : "white"
	property string label : "cos"
	
	signal buttonClick()
	onButtonClick: { console.log(buttonLabel.text + " clicked") }
		
	width: 100; height: 50

	Text {
		id: buttonLabel
		anchors.centerIn: parent
		text: label
	}
	
	MouseArea {
		id : buttonMouseArea
		anchors.fill: parent
		onClicked: buttonClick()
		hoverEnabled : true
		onEntered : parent.border.color = onHoverColor
		onExited : parent.border.color = borderColor

	}
	
	color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
}
