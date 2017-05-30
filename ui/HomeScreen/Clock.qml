import QtQuick 2.0

Item {

    anchors.centerIn: parent

    Text {
        id: clockText
        font {
            family: roboto.name
            pixelSize: 270
        }
        color: '#F0F0F0'
        antialiasing: true
        renderType: Text.NativeRendering
        anchors.centerIn: parent
    }

    Timer {
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            var hour = parseInt(date.toLocaleTimeString(Qt.locale("en_US"), "hh"))
            var min = date.toLocaleTimeString(Qt.locale("en_US"), "mm")
            if (hour > 12) {
                hour = hour - 12
            }
            if (hour > 10) {
                clockText.text = "" + hour + ":" + min
            } else {
                clockText.text = "0" + hour + ":" + min
            }

        }
    }
}
