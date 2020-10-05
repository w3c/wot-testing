const off = [0, 0, 0];
const faces = {
    "0": {
        faceX: 0,
        faceY: 0,
        color: [255, 0, 0]
    },
    "1": {
        faceX: 4,
        faceY: 0,
        color: [0, 255, 0]
    },
    "2": {
        faceX: 0,
        faceY: 4,
        color: [0, 0, 255]
    },
    "3": {
        faceX: 4,
        faceY: 4,
        color: [255, 255, 255]
    }
}

class LedMatrix {
   
    constructor(rows,columns){
        this._matrix = [];
        for (let i = 0; i < rows; i++) {
            this._matrix[i] = Array(columns);
            for (let j = 0; j < this._matrix[i].length; j++) {
                this._matrix[i][j] = off;
            }
        }
    }
    
    setFaceStatus(faceID,status) {
        let faceX = faces[faceID].faceX
        let faceY = faces[faceID].faceY
        let color = status ? faces[faceID].color : off
        for (let i = 0 + faceX; i < faceX + 4 && i <  this._matrix.length; i++) {
            for (let j = 0 + faceY; j < faceY + 4 && j < this._matrix[i].length; j++) {
                this._matrix[i][j] = color
            }
        }
    }

    toArray() {
        let result = [];
        let w = 0;
        for (let i = 0; i < this._matrix.length; i++) {
            for (let j = 0; j < this._matrix[i].length; j++) {
                result[w++] = this._matrix[i][j];
            }
        }
        return result;
    }
}

module.exports = LedMatrix;