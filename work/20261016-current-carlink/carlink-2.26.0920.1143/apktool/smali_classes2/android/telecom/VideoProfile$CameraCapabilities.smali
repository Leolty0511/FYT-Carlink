.class public final Landroid/telecom/VideoProfile$CameraCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraCapabilities"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/VideoProfile$CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mMaxZoom:F

.field private final mWidth:I

.field private final mZoomSupported:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$CameraCapabilities$1;-><init>()V

    sput-object v0, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-void
.end method

.method public constructor <init>(IIZF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    .line 4
    iput p2, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    .line 5
    iput-boolean p3, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    .line 6
    iput p4, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->isZoomSupported()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-byte p2, p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
