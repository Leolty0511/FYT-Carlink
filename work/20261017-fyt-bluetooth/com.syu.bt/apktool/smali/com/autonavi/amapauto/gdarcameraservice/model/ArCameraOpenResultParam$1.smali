.class Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam$1;
.super Ljava/lang/Object;
.source "ArCameraOpenResultParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    new-array v0, p1, [Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam$1;->newArray(I)[Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    move-result-object v0

    return-object v0
.end method
