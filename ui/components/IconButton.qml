import QtQuick 2.0

Item {
    id: idIconButton

    property string defaultSrc : ""
    property string hoverSrc : ""

    readonly property bool hover: idMouse.containsMouse

    signal pressed
    signal released
    signal clicked
    signal pressAndHold

    Image {
        id: idIcon
        anchors.centerIn: parent
        source: idMouse.containsMouse? hoverSrc: defaultSrc
    }

    MouseArea {
        id: idMouse

        property bool islong : false

        anchors.fill: parent
        hoverEnabled: true

        onPressed: {
            idIconButton.pressed()
        }
        onPressAndHold: {
            islong = true
            idIconButton.pressAndHold()
        }

        onReleased: {
            if(!islong){
                idIconButton.clicked()
            }
            islong = false
            idIconButton.released()
        }
        onCanceled: {
            islong = false
        }

        onExited: {
            islong = false
        }
    }

}
