import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import "D:/qt-opengl/qml/Qt/labs/controls/"
import Qt.labs.controls 1.0 as Labs
// import "D:\qt-opengl\qml\Qt\labs\controls\Qt\labs\controls" 1.0 as Labs

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Flow Vis")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    GridLayout {
        id: grid
        columns: 2
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10

        Label {text: "Vector scale:"; font.pixelSize: 18}
        SliderRound
        {
            Layout.fillWidth: true
            value: 1.0
        }

        Label {text: "Variable"; font.pixelSize: 18}
        ComboBox
        {
            model: [ "Temperature", "Salinity", "Pressure" ];
            Layout.fillWidth : true;

        }

        Label {text: "Heat map"; font.pixelSize: 18}
        ComboBox
        {
            model: [ "Jet", "HSV", "Prism" ];
            Layout.fillWidth: true
        }

		Label {text: "Scalar range:"; font.pixelSize: 18}

		Labs.RangeSlider
        {
            first.handle {implicitWidth: 18; implicitHeight: 18}
            second.handle {implicitWidth: 18; implicitHeight: 18}
            first.value: 0.0
            second.value: 1.0
            padding: 0
        }

    }

    ColumnLayout
    {

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        Layout.fillWidth: true

        SliderRound
        {
            Layout.fillWidth: true;            
            value: 0.75
        }

    }


    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }


}
