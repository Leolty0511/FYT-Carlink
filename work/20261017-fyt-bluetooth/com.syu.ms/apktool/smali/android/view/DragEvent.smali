.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_DRAG_ENDED:I = 0x4

.field public static final ACTION_DRAG_ENTERED:I = 0x5

.field public static final ACTION_DRAG_EXITED:I = 0x6

.field public static final ACTION_DRAG_LOCATION:I = 0x2

.field public static final ACTION_DRAG_STARTED:I = 0x1

.field public static final ACTION_DROP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final TRACK_RECYCLED_LOCATION:Z = false

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/DragEvent;

.field private static gRecyclerUsed:I


# instance fields
.field public mAction:I

.field public mClipData:Landroid/content/ClipData;

.field public mClipDescription:Landroid/content/ClipDescription;

.field public mDragResult:Z

.field public mLocalState:Ljava/lang/Object;

.field private mNext:Landroid/view/DragEvent;

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field public mX:F

.field public mY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/view/DragEvent$1;

    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    .line 2
    iput p2, p0, Landroid/view/DragEvent;->mX:F

    .line 3
    iput p3, p0, Landroid/view/DragEvent;->mY:F

    .line 4
    iput-object p4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 5
    iput-object p5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 6
    iput-object p6, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 7
    iput-boolean p7, p0, Landroid/view/DragEvent;->mDragResult:Z

    return-void
.end method

.method public static obtain()Landroid/view/DragEvent;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 10

    .line 2
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/DragEvent;

    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p3

    move/from16 v9, p6

    .line 5
    invoke-direct/range {v2 .. v9}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V

    .line 6
    monitor-exit v1

    return-object v0

    .line 7
    :cond_0
    iget-object v2, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object v2, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 8
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Landroid/view/DragEvent;->mRecycled:Z

    .line 12
    iput-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p3

    move/from16 v9, p6

    .line 13
    invoke-direct/range {v2 .. v9}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7

    .line 15
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    iget v2, p0, Landroid/view/DragEvent;->mY:F

    iget-object v3, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-boolean v6, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getLocalState()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    return v0
.end method

.method public getX()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    return v0
.end method

.method public final recycle()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 4
    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 5
    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 6
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    add-int/2addr v2, v0

    .line 8
    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 9
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    .line 10
    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 11
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    :goto_0
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void
.end method
