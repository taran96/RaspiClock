import QtQuick 2.7
import QtQuick.Window 2.2

import "HomeScreen"

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")
    id: mainWindow

    FontLoader {
        id: roboto
        source: "qrc:/fonts/Roboto Mono Light for Powerline.ttf"
    }

    //Component.onCompleted: mainWindow.showFullScreen()
    MainForm {
        anchors.fill: parent
        id: mainForm
    }
}
