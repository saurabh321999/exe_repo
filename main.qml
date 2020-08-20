import QtQuick 2.0
import QtQuick.Controls 2.0


ApplicationWindow{
    visible: true
    width: 500
    height: 500

Rectangle {
    id: rect
    anchors.fill: parent
    color: "skyblue"
    width: 400; height: 400
    MultiPointTouchArea {
        anchors.fill: parent
        minimumTouchPoints: 1
        touchPoints: [
            TouchPoint { id: point1 },
            TouchPoint { id: point2 }
        ]
        onPressed: {
            rect.color= "black"
        }
    }

    Rectangle {
        width: 30; height: 30
        color: "green"
        x: point1.x + point2.x
        y: point1.y + point2.y
    }

    Rectangle {
        width: 30; height: 30
        color: "yellow"
        x: point2.x
        y: point2.y
    }
}
}

