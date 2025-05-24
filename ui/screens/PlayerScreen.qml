import QtQuick 2.12
import QtQuick.Layouts 1.12
import "../components"

Item {
    id: idPlayer
    anchors.fill: parent

    Rectangle {
        id: idBackground
        anchors.fill: parent
        color: "#000000"
    }

    RowLayout {
        id: idController
        anchors{
            bottom: parent.bottom
            bottomMargin: 22
        }
        width: parent.width
        height: 72
        Row {
            id: idLeftController
            height: 72
            Layout.leftMargin: 10

            IconButton {
                id: idPlay
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/Play_Default.png"
                hoverSrc: "qrc:/assets/icon/Play_Hover.png"
                onClicked: {
                    console.log("clicked")
                }
                onPressAndHold: {
                    console.log("onPressAndHold")
                }
            }
            IconButton {
                id: idBack
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/10secBack_Default.png"
                hoverSrc: "qrc:/assets/icon/10secBack_Hover.png"
            }
            IconButton {
                id: idForward
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/10secForward_Default.png"
                hoverSrc: "qrc:/assets/icon/10secForward_Hover.png"
            }
            SoundSlider{
                id: idSoundSlider
                width: 72
            }
        }
        Item {
            Layout.fillWidth: true
        }

        Row {
            id: idRightController
            height: 72
            Layout.rightMargin: 10
            layoutDirection: Qt.RightToLeft
            IconButton {
                id: idFullScreen
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/FullScreen_Default.png"
                hoverSrc: "qrc:/assets/icon/FullScreen_Hover.png"
                onClicked: {
                    console.log("clicked")
                }
                onPressAndHold: {
                    console.log("onPressAndHold")
                }
            }
            IconButton {
                id: idSubtitles
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/Subtitles_Default.png"
                hoverSrc: "qrc:/assets/icon/Subtitles_Hover.png"
                onClicked: {
                    console.log("clicked")
                }
                onPressAndHold: {
                    console.log("onPressAndHold")
                }
            }
            IconButton {
                id: idList
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/ListofEpisodes_Default.png"
                hoverSrc: "qrc:/assets/icon/ListofEpisodes_Hover.png"
                onClicked: {
                    console.log("clicked")
                }
                onPressAndHold: {
                    console.log("onPressAndHold")
                }
            }
            IconButton {
                id: idNext
                width: 72
                height: 72
                defaultSrc: "qrc:/assets/icon/NextEpisode_Default.png"
                hoverSrc: "qrc:/assets/icon/NextEpisode_Hover.png"
                onClicked: {
                    console.log("clicked")
                }
                onPressAndHold: {
                    console.log("onPressAndHold")
                }
            }
        }
    }
}
