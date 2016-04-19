import QtQuick 2.0
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4

Slider
{
    //anchors.left: parent.left;
    //anchors.leftMargin: 5;
    //anchors.right: parent.right;
    //anchors.rightMargin: 5;
    style: SliderStyle
    {
        groove: Rectangle
        {
            implicitWidth: 200
            implicitHeight: 6
            color: "white"
            radius: 3
            border.color: "black"
        }
        handle: Rectangle
        {
            anchors.centerIn: parent
            border.color: "black"
            border.width: 1
            implicitWidth: 18
            implicitHeight: 18
            radius: 9
        }
    }
}
