import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 1440
    height: 720
    visible: true
    title: qsTr("Hello World")

    Loader{
        id: idLoader
        anchors.fill: parent
        source: "/ui/screens/PlayerScreen.qml"
    }
}
