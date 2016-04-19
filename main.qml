import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import Qt.labs.controls 1.0 as Labs

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
        Label {text: "Vector scale:"; font.pixelSize: 18}
        SliderRound
        {
            Layout.fillWidth : true
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
            Layout.fillWidth : true
        }


    }

    ColumnLayout
    {

        // anchors.fill: parent;
        anchors.bottom: parent.bottom;
        anchors.left: parent.left;
        anchors.right: parent.right;
        Layout.fillWidth: true;

        Label
        {
            // anchors.leftMargin : 100;
            text: "Vector Scale"
        }

        SliderRound
        {
            value: 0.5
        }



        Labs.RangeSlider
        {

            first.handle
            {
                implicitWidth: 18
                implicitHeight: 18
            }

            second.handle
            {
                implicitWidth: 18
                implicitHeight: 18
            }

            first.value: 0.25
            second.value: 0.75
        }

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
