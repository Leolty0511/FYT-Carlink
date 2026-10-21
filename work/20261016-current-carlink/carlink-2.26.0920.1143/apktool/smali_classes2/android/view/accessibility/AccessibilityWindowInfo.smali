.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field public static final UNDEFINED_WINDOW_ID:I = -0x1

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorId:I

.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mInPictureInPicture:Z

.field private mLayer:I

.field private mParentId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 9
    .line 10
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 6
    .line 7
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 8
    .line 9
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 10
    .line 11
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 19
    .line 20
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 21
    .line 22
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private clear()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 3
    .line 4
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 8
    .line 9
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 10
    .line 11
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 12
    .line 13
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 26
    .line 27
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 28
    .line 29
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 33
    .line 34
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v2, v1

    .line 58
    :goto_0
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    new-instance v2, Landroid/util/LongArray;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Landroid/util/LongArray;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 76
    .line 77
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 84
    .line 85
    int-to-long v4, v2

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 97
    .line 98
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    .line 3
    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 5
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 6
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 7
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 8
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 9
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 10
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 11
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 13
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 14
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    .line 15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 16
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 19
    :cond_1
    :goto_0
    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput p0, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "<UNKNOWN>"

    return-object p0

    :cond_0
    const-string p0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object p0

    :cond_1
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :cond_2
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :cond_3
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :cond_4
    const-string p0, "TYPE_APPLICATION"

    return-object p0
.end method


# virtual methods
.method public addChild(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/LongArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 13
    .line 14
    int-to-long v1, p1

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_7

    .line 6
    .line 7
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 8
    .line 9
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 26
    .line 27
    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 33
    .line 34
    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 35
    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 40
    .line 41
    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 42
    .line 43
    if-eq v0, v2, :cond_3

    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget-object p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    return v1

    .line 55
    :cond_4
    iget-object p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    return v1

    .line 64
    :cond_5
    const/4 p1, 0x0

    .line 65
    return p1

    .line 66
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v0, "Not same type."

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v0, "Not same window."

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 19
    .line 20
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 21
    .line 22
    iget p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 23
    .line 24
    if-ne v2, p1, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    move v0, v1

    .line 28
    :goto_0
    return v0
.end method

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 20
    .line 21
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 22
    .line 23
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 24
    .line 25
    int-to-long v5, v0

    .line 26
    const/4 v7, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int p1, v0

    .line 17
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 16
    .line 17
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    .line 1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 13
    .line 14
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 15
    .line 16
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public inPictureInPicture()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setActive(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setAnchorId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setConnectionId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return-void
.end method

.method public setLayer(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    return-void
.end method

.method public setPictureInPicture(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AccessibilityWindowInfo[title="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "id="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", type="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 29
    .line 30
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", layer="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", bounds="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", focused="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", active="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", pictureInPicture="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->inPictureInPicture()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", hasParent="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    const/4 v3, 0x0

    .line 102
    const/4 v4, -0x1

    .line 103
    if-eq v1, v4, :cond_0

    .line 104
    .line 105
    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    move v1, v3

    .line 108
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", isAnchored="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 117
    .line 118
    if-eq v1, v4, :cond_1

    .line 119
    .line 120
    move v1, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move v1, v3

    .line 123
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", hasChildren="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 132
    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-lez v1, :cond_2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    move v2, v3

    .line 143
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const/16 v1, 0x5d

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/util/LongArray;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-ge v0, v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/util/LongArray;->get(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    long-to-int v2, v2

    .line 69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
