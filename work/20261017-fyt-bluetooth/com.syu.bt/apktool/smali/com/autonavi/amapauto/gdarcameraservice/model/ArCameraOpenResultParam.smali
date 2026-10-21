.class public Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
.super Ljava/lang/Object;
.source "ArCameraOpenResultParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraId:Ljava/lang/String;

.field public cameraUseType:I

.field public dataType:I

.field public imageFormat:I

.field public imageHeight:I

.field public imageSize:I

.field public imageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam$1;

    invoke-direct {v0}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam$1;-><init>()V

    sput-object v0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "imageSize"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 22
    iput p2, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 23
    iput p3, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 24
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "imageFormat"    # I
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "imageSize"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    .line 28
    iput p2, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 29
    iput p3, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 30
    iput p4, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 31
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "imageFormat"    # I
    .param p2, "dataType"    # I
    .param p3, "cameraUseType"    # I
    .param p4, "imageWidth"    # I
    .param p5, "imageHeight"    # I
    .param p6, "imageSize"    # I
    .param p7, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    .line 44
    iput p2, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    .line 45
    iput p3, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    .line 46
    iput p4, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 47
    iput p5, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 48
    iput p6, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 49
    iput-object p7, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "imageFormat"    # I
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "imageSize"    # I
    .param p5, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    .line 35
    iput p2, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 36
    iput p3, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 37
    iput p4, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 38
    iput-object p5, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraUseType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    return v0
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCameraUseType(I)V
    .locals 0
    .param p1, "cameraUseType"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    .line 74
    return-void
.end method

.method public setDataType(I)V
    .locals 0
    .param p1, "dataType"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    .line 66
    return-void
.end method

.method public setImageFormat(I)V
    .locals 0
    .param p1, "imageFormat"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    .line 58
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .param p1, "imageHeight"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    .line 90
    return-void
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "imageSize"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    .line 106
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .param p1, "imageWidth"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArCameraParam{imageFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraUseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->dataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraUseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->imageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
