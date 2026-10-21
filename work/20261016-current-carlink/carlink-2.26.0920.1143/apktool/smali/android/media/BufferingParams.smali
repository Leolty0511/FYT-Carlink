.class public final Landroid/media/BufferingParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/BufferingParams$Builder;,
        Landroid/media/BufferingParams$BufferingMode;
    }
.end annotation


# static fields
.field public static final BUFFERING_MODE_NONE:I = 0x0

.field public static final BUFFERING_MODE_SIZE_ONLY:I = 0x2

.field public static final BUFFERING_MODE_TIME_ONLY:I = 0x1

.field public static final BUFFERING_MODE_TIME_THEN_SIZE:I = 0x3

.field private static final BUFFERING_NO_WATERMARK:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/BufferingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInitialBufferingMode:I

.field private mInitialWatermarkKB:I

.field private mInitialWatermarkMs:I

.field private mRebufferingMode:I

.field private mRebufferingWatermarkHighKB:I

.field private mRebufferingWatermarkHighMs:I

.field private mRebufferingWatermarkLowKB:I

.field private mRebufferingWatermarkLowMs:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/BufferingParams$1;

    invoke-direct {v0}, Landroid/media/BufferingParams$1;-><init>()V

    sput-object v0, Landroid/media/BufferingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 5
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 7
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 8
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 9
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 10
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 11
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/BufferingParams$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/BufferingParams;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 14
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 16
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 17
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 18
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 19
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 20
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/BufferingParams$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/BufferingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return p0
.end method

.method public static synthetic access$002(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return p1
.end method

.method public static synthetic access$100(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return p0
.end method

.method public static synthetic access$102(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return p1
.end method

.method public static synthetic access$200(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return p0
.end method

.method public static synthetic access$202(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return p1
.end method

.method public static synthetic access$300(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return p0
.end method

.method public static synthetic access$302(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return p1
.end method

.method public static synthetic access$400(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return p0
.end method

.method public static synthetic access$402(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return p1
.end method

.method public static synthetic access$500(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return p0
.end method

.method public static synthetic access$502(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return p1
.end method

.method public static synthetic access$600(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return p0
.end method

.method public static synthetic access$602(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return p1
.end method

.method public static synthetic access$700(Landroid/media/BufferingParams;)I
    .locals 0

    iget p0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return p0
.end method

.method public static synthetic access$702(Landroid/media/BufferingParams;I)I
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInitialBufferingMode()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return v0
.end method

.method public getInitialBufferingWatermarkKB()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return v0
.end method

.method public getInitialBufferingWatermarkMs()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return v0
.end method

.method public getRebufferingMode()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return v0
.end method

.method public getRebufferingWatermarkHighKB()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return v0
.end method

.method public getRebufferingWatermarkHighMs()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return v0
.end method

.method public getRebufferingWatermarkLowKB()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return v0
.end method

.method public getRebufferingWatermarkLowMs()I
    .locals 1

    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
