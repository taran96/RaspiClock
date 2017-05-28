import QtQuick 2.7
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.0

Rectangle {

    width: 800
    height: 480
    color: "#121212"
    property alias mouseArea: mouseArea
    property alias row2: row2
    property alias text1: text1
    property alias row1: row1

    MouseArea {
        id: mouseArea
        width: 800
        height: 480
        z: 0
        enabled: true
        hoverEnabled: false
        visible: true
        anchors.rightMargin: 762
        anchors.bottomMargin: 447
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
    }

    Row {
        id: row1
        x: 8
        y: 15
        width: 784
        height: 400
        layoutDirection: Qt.LeftToRight
        spacing: 0

        Text {
            id: text1
            color: "#f0f0f0"
            text: qsTr("00:00")
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            scale: 1
            rotation: 0
            transformOrigin: Item.Center
            textFormat: Text.AutoText
            font.family: "Tahoma"
            font.pixelSize: 304
        }
    }

    Row {
        id: row2
        x: 8
        y: 431
        width: 784
        height: 41
        z: 1

        MenuBackIcon {
            id: menuBackIcon1
            width: 31
            height: 32
            z: 2
        }
    }
}
