.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field private static final MAX_RANGES:I = 0x3e8

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_HDMI:I = 0x2000001

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_MOUSE_RELATIVE:I = 0x20004

.field public static final SOURCE_ROTARY_ENCODER:I = 0x400000

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasButtonUnderPad:Z

.field private final mHasMicrophone:Z

.field private final mHasVibrator:Z

.field private final mId:I

.field private final mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 4
    iput p1, p0, Landroid/view/InputDevice;->mId:I

    .line 5
    iput p2, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 6
    iput p3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 7
    iput-object p4, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 8
    iput p5, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 9
    iput p6, p0, Landroid/view/InputDevice;->mProductId:I

    .line 10
    iput-object p7, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 11
    iput-boolean p8, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 12
    iput p9, p0, Landroid/view/InputDevice;->mSources:I

    .line 13
    iput p10, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 14
    iput-object p11, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 15
    iput-boolean p12, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 16
    iput-boolean p13, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 17
    iput-boolean p14, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 18
    new-instance p1, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p1, p7, p5, p6}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 14

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/InputDevice;->mProductId:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mSources:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 31
    sget-object v3, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyCharacterMap;

    iput-object v3, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 35
    new-instance v3, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v3, v2, v0, v1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_4

    move v0, v1

    :cond_4
    :goto_4
    if-ge v5, v0, :cond_5

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    move-object v6, p0

    .line 39
    invoke-direct/range {v6 .. v13}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v11, Landroid/view/InputDevice$MotionRange;

    const/4 v10, 0x0

    move-object v2, v11

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$1;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    const-string p2, " "

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceIds()[I
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disable()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->disableInputDevice(I)V

    return-void
.end method

.method public enable()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->enableInputDevice(I)V

    return-void
.end method

.method public getControllerNumber()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 3
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4

    .line 4
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 6
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public getSources()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(I)Landroid/os/Vibrator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public hasButtonUnderPad()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs hasKeys([I)[Z
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object p1

    return-object p1
.end method

.method public hasMicrophone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->isInputDeviceEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public isFullKeyboard()Z
    .locals 2

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    const/16 v1, 0x101

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtual()Z
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public setPointerType(I)V
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return-void
.end method

.method public supportsSource(I)Z
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Input Device "

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/view/InputDevice;->mId:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ": "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "\n  Descriptor: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "\n  Generation: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\n  Location: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v1, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v1, "external"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "built-in"

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "\n  Keyboard Type: "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq v1, v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v1, "alphabetic"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string v1, "non-alphabetic"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string v1, "none"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :goto_1
    const-string v1, "\n  Has Vibrator: "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "\n  Has mic: "

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "\n  Sources: 0x"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v1, p0, Landroid/view/InputDevice;->mSources:I

    .line 118
    .line 119
    const-string v2, " ("

    .line 120
    .line 121
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/16 v1, 0x101

    .line 125
    .line 126
    const-string v2, "keyboard"

    .line 127
    .line 128
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x201

    .line 132
    .line 133
    const-string v2, "dpad"

    .line 134
    .line 135
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x1002

    .line 139
    .line 140
    const-string/jumbo v2, "touchscreen"

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/16 v1, 0x2002

    .line 147
    .line 148
    const-string v2, "mouse"

    .line 149
    .line 150
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x4002

    .line 154
    .line 155
    const-string/jumbo v2, "stylus"

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const v1, 0x10004

    .line 162
    .line 163
    .line 164
    const-string/jumbo v2, "trackball"

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const v1, 0x20004

    .line 171
    .line 172
    .line 173
    const-string v2, "mouse_relative"

    .line 174
    .line 175
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const v1, 0x100008

    .line 179
    .line 180
    .line 181
    const-string/jumbo v2, "touchpad"

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const v1, 0x1000010

    .line 188
    .line 189
    .line 190
    const-string v2, "joystick"

    .line 191
    .line 192
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/16 v1, 0x401

    .line 196
    .line 197
    const-string v2, "gamepad"

    .line 198
    .line 199
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v1, " )\n"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const/4 v2, 0x0

    .line 214
    :goto_2
    if-ge v2, v1, :cond_4

    .line 215
    .line 216
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 223
    .line 224
    const-string v4, "    "

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-static {v4}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v4, ": source=0x"

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v4, " min="

    .line 257
    .line 258
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v4, " max="

    .line 269
    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v4, " flat="

    .line 281
    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v4, " fuzz="

    .line 293
    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v4, " resolution="

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v3, "\n"

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean p2, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    if-ge v0, p2, :cond_0

    .line 82
    .line 83
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 90
    .line 91
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
