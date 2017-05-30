import QtQuick 2.7
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: rectangle1

    width: 800
    height: 480
    color: "#121212"
    property alias menuBar: menuBar
    property alias row1: row1

    Row {
        id: row1
        x: 8
        y: 15
        width: 784
        height: 400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        layoutDirection: Qt.LeftToRight
        spacing: 0

        Clock {
            id: clock1
        }
    }

    Row {
        id: menuBar
        y: 431
        width: 784
        height: 41
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        z: 1

        MenuBackIcon {
            id: menuIcon
            width: 22
            height: 29
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 9
            z: 2

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                anchors.top: parent.top
                anchors.left: parent.left
            }
        }
    }
}
