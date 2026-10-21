.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final PARCEL_TOKEN_MOTION_EVENT:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z = false

.field private static final mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field protected mSeq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    new-instance v0, Landroid/view/InputEvent$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract copy()Landroid/view/InputEvent;
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDevice()Landroid/view/InputDevice;
    .locals 1

    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeviceId()I
.end method

.method public abstract getEventTime()J
.end method

.method public abstract getEventTimeNano()J
.end method

.method public getSequenceNumber()I
    .locals 1

    iget v0, p0, Landroid/view/InputEvent;->mSeq:I

    return v0
.end method

.method public abstract getSource()I
.end method

.method public isFromSource(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract isTainted()Z
.end method

.method public prepareForReuse()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/view/InputEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 6
    .line 7
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    .line 14
    .line 15
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " recycled twice!"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public recycleIfNeededAfterDispatch()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/InputEvent;->recycle()V

    return-void
.end method

.method public abstract setSource(I)V
.end method

.method public abstract setTainted(Z)V
.end method
