.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:I

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "AXIS_X"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "AXIS_Y"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "AXIS_PRESSURE"

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v4, 0x3

    const-string v5, "AXIS_SIZE"

    .line 5
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v5, 0x4

    const-string v6, "AXIS_TOUCH_MAJOR"

    .line 6
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v6, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    .line 7
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v6, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    .line 8
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v6, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    .line 9
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x8

    const-string v7, "AXIS_ORIENTATION"

    .line 10
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x9

    const-string v7, "AXIS_VSCROLL"

    .line 11
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xa

    const-string v7, "AXIS_HSCROLL"

    .line 12
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xb

    const-string v7, "AXIS_Z"

    .line 13
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xc

    const-string v7, "AXIS_RX"

    .line 14
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xd

    const-string v7, "AXIS_RY"

    .line 15
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xe

    const-string v7, "AXIS_RZ"

    .line 16
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xf

    const-string v7, "AXIS_HAT_X"

    .line 17
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x10

    const-string v7, "AXIS_HAT_Y"

    .line 18
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x11

    const-string v7, "AXIS_LTRIGGER"

    .line 19
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x12

    const-string v7, "AXIS_RTRIGGER"

    .line 20
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x13

    const-string v7, "AXIS_THROTTLE"

    .line 21
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x14

    const-string v7, "AXIS_RUDDER"

    .line 22
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x15

    const-string v7, "AXIS_WHEEL"

    .line 23
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x16

    const-string v7, "AXIS_GAS"

    .line 24
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x17

    const-string v7, "AXIS_BRAKE"

    .line 25
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x18

    const-string v7, "AXIS_DISTANCE"

    .line 26
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x19

    const-string v7, "AXIS_TILT"

    .line 27
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x20

    const-string v7, "AXIS_GENERIC_1"

    .line 28
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x21

    const-string v7, "AXIS_GENERIC_2"

    .line 29
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x22

    const-string v7, "AXIS_GENERIC_3"

    .line 30
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x23

    const-string v7, "AXIS_GENERIC_4"

    .line 31
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x24

    const-string v7, "AXIS_GENERIC_5"

    .line 32
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x25

    const-string v7, "AXIS_GENERIC_6"

    .line 33
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x26

    const-string v7, "AXIS_GENERIC_7"

    .line 34
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x27

    const-string v7, "AXIS_GENERIC_8"

    .line 35
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x28

    const-string v7, "AXIS_GENERIC_9"

    .line 36
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x29

    const-string v7, "AXIS_GENERIC_10"

    .line 37
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    .line 38
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    .line 39
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    .line 40
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    .line 41
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    .line 42
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    .line 43
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "0x00000020"

    const-string v14, "0x00000040"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    .line 44
    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v6, "TOOL_TYPE_UNKNOWN"

    .line 46
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_FINGER"

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_STYLUS"

    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_MOUSE"

    .line 49
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_ERASER"

    .line 50
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    goto :goto_0

    :pswitch_1
    const-string p0, "ACTION_HOVER_EXIT"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_HOVER_ENTER"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_SCROLL"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_HOVER_MOVE"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_OUTSIDE"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_CANCEL"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_MOVE"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_UP"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_DOWN"

    return-object p0

    :goto_0
    const/4 v2, 0x5

    const-string v3, ")"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_UP("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_DOWN("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    sget-object v2, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 3
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "symbolicName must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v3, :cond_4

    .line 1
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    return-object v3

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v1, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result p0

    iput p0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    array-length v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    if-ge v0, p0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 4
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 5
    new-array p0, v0, [I

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeCopy(IIZ)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFindPointerIndex(II)I
.end method

.method private static native nativeGetAction(I)I
.end method

.method private static native nativeGetAxisValue(IIII)F
.end method

.method private static native nativeGetButtonState(I)I
.end method

.method private static native nativeGetDeviceId(I)I
.end method

.method private static native nativeGetDownTimeNanos(I)J
.end method

.method private static native nativeGetEdgeFlags(I)I
.end method

.method private static native nativeGetEventTimeNanos(II)J
.end method

.method private static native nativeGetFlags(I)I
.end method

.method private static native nativeGetHistorySize(I)I
.end method

.method private static native nativeGetMetaState(I)I
.end method

.method private static native nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(I)I
.end method

.method private static native nativeGetPointerId(II)I
.end method

.method private static native nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(IIII)F
.end method

.method private static native nativeGetSource(I)I
.end method

.method private static native nativeGetToolType(II)I
.end method

.method private static native nativeGetXOffset(I)F
.end method

.method private static native nativeGetXPrecision(I)F
.end method

.method private static native nativeGetYOffset(I)F
.end method

.method private static native nativeGetYPrecision(I)F
.end method

.method private static native nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I
.end method

.method private static native nativeIsTouchEvent(I)Z
.end method

.method private static native nativeOffsetLocation(IFF)V
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeScale(IF)V
.end method

.method private static native nativeSetAction(II)V
.end method

.method private static native nativeSetDownTimeNanos(IJ)V
.end method

.method private static native nativeSetEdgeFlags(II)V
.end method

.method private static native nativeSetFlags(II)V
.end method

.method private static native nativeSetSource(II)I
.end method

.method private static native nativeTransform(ILandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 5
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 8
    invoke-virtual {v1}, Landroid/view/InputEvent;->prepareForReuse()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 22

    .line 19
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 20
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 21
    :try_start_0
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 22
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    .line 23
    aget-object v3, v20, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 24
    aget-object v3, v20, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 25
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 26
    aget-object v3, v21, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 27
    aget-object v3, v21, v2

    move/from16 v4, p5

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 28
    aget-object v3, v21, v2

    move/from16 v4, p6

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 29
    aget-object v3, v21, v2

    move/from16 v4, p7

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 30
    aget-object v2, v21, v2

    move/from16 v3, p8

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 31
    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v15, p0, v8

    mul-long v17, p2, v8

    const/16 v19, 0x1

    move/from16 v4, p12

    move/from16 v6, p4

    move/from16 v8, p13

    move/from16 v9, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v21}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v2

    iput v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 32
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    .line 35
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 34
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 14
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x0

    move/from16 v7, p5

    :goto_0
    if-ge v0, v7, :cond_0

    .line 15
    aget-object v2, v8, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 16
    aget-object v2, v8, v0

    aget v3, p6, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    .line 17
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 21

    move/from16 v3, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v1, p12

    move/from16 v5, p13

    move/from16 v2, p14

    move/from16 v4, p15

    .line 10
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v9

    .line 11
    iget v0, v9, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v14, 0xf4240

    mul-long v12, p0, v14

    mul-long v14, v14, p2

    const/4 v8, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v9

    move/from16 v9, v19

    invoke-static/range {v0 .. v18}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v0

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent;->mNativePtr:I

    return-object v1
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3

    if-eqz p0, :cond_0

    .line 36
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 37
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget p0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result p0

    iput p0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    return-object v0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget p0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result p0

    iput p0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 5
    aget-object v3, v1, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 6
    aget-object p3, v1, v2

    iput p4, p3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 7
    aget-object p3, v1, v2

    iput p5, p3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 8
    aget-object p3, v1, v2

    iput p6, p3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 9
    iget p3, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 p4, 0xf4240

    mul-long/2addr p1, p4

    invoke-static {p3, p1, p2, v1, p7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 3

    .line 11
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 12
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return v2

    .line 13
    :cond_0
    iget v3, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    return v2

    .line 14
    :cond_1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v0

    iget v3, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v0

    iget v3, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v0

    iget v3, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v3

    if-eq v0, v3, :cond_2

    goto/16 :goto_4

    .line 15
    :cond_2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    .line 16
    iget v3, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v3

    if-eq v0, v3, :cond_3

    return v2

    .line 17
    :cond_3
    sget-object v3, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v3

    .line 18
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 19
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 20
    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v0, :cond_5

    .line 21
    iget v7, p0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v8, v1, v2

    invoke-static {v7, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 22
    iget v7, p1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v8, v1, v6

    invoke-static {v7, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 23
    aget-object v7, v1, v2

    aget-object v6, v1, v6

    invoke-static {v7, v6}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 24
    monitor-exit v3

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_5
    iget v1, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v1}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v1

    .line 26
    iget v5, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v5

    move v7, v2

    :goto_1
    if-gt v7, v5, :cond_8

    if-ne v7, v5, :cond_6

    const/high16 v8, -0x80000000

    goto :goto_2

    :cond_6
    move v8, v7

    :goto_2
    move v9, v2

    :goto_3
    if-ge v9, v0, :cond_7

    .line 27
    iget v10, p1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v11, v4, v9

    invoke-static {v10, v9, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 28
    :cond_7
    iget v9, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9, v8}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v8

    .line 29
    iget v10, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10, v8, v9, v4, v1}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 30
    :cond_8
    monitor-exit v3

    return v6

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return v2
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 25

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v3, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v3

    .line 4
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 5
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 6
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    :goto_0
    const/high16 v5, -0x80000000

    if-ge v4, v3, :cond_0

    .line 7
    iget v6, v1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v7, v21, v4

    invoke-static {v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 8
    iget v6, v1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v7, v22, v4

    invoke-static {v6, v4, v5, v7}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 9
    aget-object v5, v22, v4

    aget-object v6, v22, v4

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v7, p1

    move/from16 v8, p3

    invoke-static {v6, v7, v8}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 10
    aget-object v5, v22, v4

    aget-object v6, v22, v4

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v9, p2

    move/from16 v10, p4

    invoke-static {v6, v9, v10}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v6, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v6

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v7

    iget v8, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v8

    iget v9, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v9

    iget v10, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v10

    iget v11, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v11

    iget v12, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v12

    iget v13, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v13

    iget v14, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v14

    iget v15, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v15

    iget v5, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v17

    iget v5, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v18

    iget v5, v1, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v5, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v23

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v17

    move-wide/from16 v16, v18

    move-wide/from16 v18, v23

    move/from16 v20, v3

    invoke-static/range {v4 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 12
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/MotionEvent;->nativeDispose(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/view/MotionEvent;->mNativePtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(II)I

    move-result p1

    return p1
.end method

.method public final getAction()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, p1, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getAxisValue(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, p2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getButtonState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 1

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalOrientation(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalPressure(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalSize(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalSize(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalX(I)F
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalX(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalY(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalY(II)F
    .locals 2

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getHistorySize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getPointerCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result p1

    return p1
.end method

.method public final getPointerIdBits()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget v3, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3, v1}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final getPressure()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getRawX()F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v1, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getSource()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getToolMinor()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getToolType(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetToolType(II)I

    move-result p1

    return p1
.end method

.method public final getTouchMajor()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getTouchMinor()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getX()F
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getXPrecision()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result p1

    return p1
.end method

.method public final getYPrecision()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTouchEvent()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeIsTouchEvent(I)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 2
    iget v4, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v1, v2, v5}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v4

    .line 3
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v3, v2, v5}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v3

    cmpg-float v5, v4, p1

    if-ltz v5, :cond_1

    cmpl-float v4, v4, p3

    if-gtz v4, :cond_1

    cmpg-float v4, v3, p2

    if-ltz v4, :cond_1

    cmpl-float v3, v3, p4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v3
.end method

.method public final offsetLocation(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 1
    :cond_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(IFF)V

    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 5
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 6
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final scale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeScale(IF)V

    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetAction(II)V

    return-void
.end method

.method public final setDownTime(J)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(IJ)V

    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(II)V

    return-void
.end method

.method public final setLocation(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final setSource(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetSource(II)I

    return-void
.end method

.method public final setTainted(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    and-int/2addr p1, v0

    :goto_0
    invoke-static {v1, p1}, Landroid/view/MotionEvent;->nativeSetFlags(II)V

    return-void
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 32

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v3, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v3

    .line 4
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 5
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 6
    sget-object v15, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 7
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 8
    iget v4, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v4

    and-int/lit16 v5, v4, 0xff

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    const/4 v7, -0x1

    const/4 v14, 0x0

    move v8, v14

    move v13, v8

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v3, :cond_2

    .line 9
    iget v10, v1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v11, v23, v13

    invoke-static {v10, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 10
    aget-object v10, v23, v13

    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/2addr v9, v10

    and-int v9, v9, p1

    if-eqz v9, :cond_1

    if-ne v8, v6, :cond_0

    move v7, v13

    .line 11
    :cond_0
    aput v8, v24, v13

    add-int/lit8 v13, v13, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_c

    const/4 v3, 0x5

    if-eq v5, v3, :cond_3

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    :cond_3
    if-gez v7, :cond_5

    const/4 v4, 0x2

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_2

    :cond_5
    if-ne v13, v9, :cond_7

    if-ne v5, v3, :cond_6

    move v4, v14

    goto :goto_1

    :cond_6
    move v4, v9

    goto :goto_1

    :cond_7
    shl-int/lit8 v3, v7, 0x8

    or-int v4, v5, v3

    goto :goto_1

    .line 12
    :goto_2
    iget v4, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v12

    move v11, v14

    :goto_3
    if-gt v11, v12, :cond_b

    if-ne v11, v12, :cond_8

    const/high16 v4, -0x80000000

    goto :goto_4

    :cond_8
    move v4, v11

    :goto_4
    move v5, v14

    :goto_5
    if-ge v5, v13, :cond_9

    .line 13
    iget v6, v1, Landroid/view/MotionEvent;->mNativePtr:I

    aget v7, v24, v5

    aget-object v8, v15, v5

    invoke-static {v6, v7, v4, v8}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 14
    :cond_9
    iget v5, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v9

    if-nez v11, :cond_a

    .line 15
    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v5, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v5

    iget v6, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v6

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v8

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v16

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v17

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v18

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v19

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v20

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v21

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v22

    iget v7, v1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v25

    move v7, v3

    move-wide/from16 v27, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v29, v11

    move/from16 v11, v18

    move/from16 v30, v12

    move/from16 v12, v19

    move/from16 v31, v13

    move/from16 v13, v20

    move v1, v14

    move/from16 v14, v21

    move-object/from16 p1, v15

    move/from16 v15, v22

    move-wide/from16 v16, v25

    move-wide/from16 v18, v27

    move/from16 v20, v31

    move-object/from16 v21, v23

    move-object/from16 v22, p1

    invoke-static/range {v4 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v4

    iput v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v5, p1

    goto :goto_6

    :cond_a
    move-wide/from16 v27, v9

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move v1, v14

    move-object/from16 p1, v15

    .line 16
    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v5, p1

    move-wide/from16 v6, v27

    invoke-static {v4, v6, v7, v5, v1}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    :goto_6
    add-int/lit8 v11, v29, 0x1

    move v14, v1

    move-object v15, v5

    move/from16 v12, v30

    move/from16 v13, v31

    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 17
    :cond_b
    monitor-exit v2

    return-object v0

    .line 18
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idBits did not match any ids in the event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent { action="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, ", id["

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", x["

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y["

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", toolType["

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ", buttonState="

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", metaState="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flags=0x"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", edgeFlags=0x"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pointerCount="

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", historySize="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source=0x"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeTransform(ILandroid/graphics/Matrix;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matrix must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {p2, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    return-void
.end method
