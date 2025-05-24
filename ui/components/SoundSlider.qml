import QtQuick 2.0

Item {
    id: idSoundSlider

    property bool mute: false
    property bool midle: false

    IconButton {
        id: idVolume
        width: 72
        height: 72
        defaultSrc: {
            if(idSoundSlider.mute){
                return "qrc:/assets/icon/Mute_Default.png"
            }else if(idSoundSlider.midle) {
                return "qrc:/assets/icon/Sound_Midle_Default.png"
            } else {
                return "qrc:/assets/icon/Sound_High_Default.png"
            }
        }
        hoverSrc: {
            if(idSoundSlider.mute){
                return "qrc:/assets/icon/Mute_Hover.png"
            }else if(idSoundSlider.midle) {
                return "qrc:/assets/icon/Sound_Hover_Default.png"
            } else {
                return "qrc:/assets/icon/Sound_Hover_Default.png"
            }
        }
        onClicked: {
            idSoundSlider.mute = !idSoundSlider.mute
        }
    }
}
