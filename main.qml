import QtQuick 1.0


Rectangle {

	height: 500
	width: 600
	Row{
		id: menuBar
		//height: 100
		Button {
			label : "File"
			id : fileButton
			onButtonClick: menuListView.currentIndex = 0
		}
		Button {
			label : "Edit"
			id : editButton
			onButtonClick: menuListView.currentIndex = 1
		}
	}


		
	VisualItemModel {
		id: menuListModel

		FileMenu{
		   // width: menuListView.width/5
		   // height: menuBar.height
		   // color: fileColor
		}
		EditMenu{
		    //color: editColor
		  //  width:  menuListView.width/5
		   // height: menuBar.height
		}
	}
		
	ListView {
		id: menuListView

		//anchors.fill : parent
		//anchors.bottom: parent.bottom
		anchors.top : menuBar.bottom
		width: parent.width
		height : 200

		model: menuListModel

		snapMode: ListView.SnapOneItem
		orientation: ListView.Horizontal
		boundsBehavior: Flickable.StopAtBounds
		flickDeceleration: 5000
		highlightFollowsCurrentItem: true
		highlightMoveDuration: 240
		highlightRangeMode: ListView.StrictlyEnforceRange
	}
}


