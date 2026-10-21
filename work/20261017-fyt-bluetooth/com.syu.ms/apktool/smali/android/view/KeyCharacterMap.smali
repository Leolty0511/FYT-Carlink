.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACCENT_ACUTE:I = 0xb4

.field private static final ACCENT_BREVE:I = 0x2d8

.field private static final ACCENT_CARON:I = 0x2c7

.field private static final ACCENT_CEDILLA:I = 0xb8

.field private static final ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final ACCENT_DOT_BELOW:I = 0x2e

.field private static final ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final ACCENT_GRAVE:I = 0x2cb

.field private static final ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final ACCENT_HORN:I = 0x27

.field private static final ACCENT_MACRON:I = 0xaf

.field private static final ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final ACCENT_OGONEK:I = 0x2db

.field private static final ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final ACCENT_RING_ABOVE:I = 0x2da

.field private static final ACCENT_STROKE:I = 0x2d

.field private static final ACCENT_TILDE:I = 0x2dc

.field private static final ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final ACCENT_UMLAUT:I = 0xa8

.field private static final ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHAR_SPACE:I = 0x20

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL:I = 0x4

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static final sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private mPtr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v2, 0x300

    const/16 v3, 0x2cb

    .line 3
    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v4, 0x301

    const/16 v5, 0xb4

    .line 4
    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v4, 0x302

    const/16 v6, 0x2c6

    .line 5
    invoke-static {v4, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x303

    const/16 v7, 0x2dc

    .line 6
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x304

    const/16 v8, 0xaf

    .line 7
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x306

    const/16 v8, 0x2d8

    .line 8
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x307

    const/16 v8, 0x2d9

    .line 9
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x308

    const/16 v8, 0xa8

    .line 10
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x309

    const/16 v8, 0x2c0

    .line 11
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x30a

    const/16 v8, 0x2da

    .line 12
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x30b

    const/16 v8, 0x2dd

    .line 13
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x30c

    const/16 v8, 0x2c7

    .line 14
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x30d

    const/16 v8, 0x2c8

    .line 15
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x312

    const/16 v8, 0x2bb

    .line 16
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x313

    const/16 v8, 0x1fbd

    .line 17
    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x314

    const/16 v9, 0x2bd

    .line 18
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x315

    const/16 v9, 0x2bc

    .line 19
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x31b

    const/16 v9, 0x27

    .line 20
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x323

    const/16 v9, 0x2e

    .line 21
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x327

    const/16 v9, 0xb8

    .line 22
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x328

    const/16 v9, 0x2db

    .line 23
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x329

    const/16 v9, 0x2cc

    .line 24
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x331

    const/16 v9, 0x2cd

    .line 25
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x335

    const/16 v9, 0x2d

    .line 26
    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v7, 0x340

    .line 27
    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x341

    .line 28
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x343

    .line 29
    invoke-virtual {v0, v3, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x60

    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    .line 31
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x7e

    .line 32
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    const/16 v1, 0x110

    .line 35
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x47

    const/16 v1, 0x1e4

    .line 36
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x48

    const/16 v1, 0x126

    .line 37
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x49

    const/16 v1, 0x197

    .line 38
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4c

    const/16 v1, 0x141

    .line 39
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4f

    const/16 v1, 0xd8

    .line 40
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x54

    const/16 v1, 0x166

    .line 41
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x64

    const/16 v1, 0x111

    .line 42
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x67

    const/16 v1, 0x1e5

    .line 43
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x68

    const/16 v1, 0x127

    .line 44
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x69

    const/16 v1, 0x268

    .line 45
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6c

    const/16 v1, 0x142

    .line 46
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6f

    const/16 v1, 0xf8

    .line 47
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x74

    const/16 v1, 0x167

    .line 48
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 49
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)I

    move-result p1

    iput p1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not read KeyCharacterMap from parcel."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parcel must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static addCombining(II)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 2
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private static addDeadKey(III)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    .line 2
    sget-object p1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid dead key declaration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deviceHasKey(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    aget-boolean p0, p0, v2

    return p0
.end method

.method public static deviceHasKeys([I)[Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    return-object p0
.end method

.method public static getDeadChar(II)I
    .locals 5

    if-eq p1, p0, :cond_4

    const/16 v0, 0x20

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    .line 2
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v2

    const/4 v3, -0x1

    .line 3
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 4
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-char p1, p1

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    sget-object p0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v3, p0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 9
    :cond_2
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v4, v0

    .line 10
    :cond_3
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return p0
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 3

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load key character map for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetCharacter(III)C
.end method

.method private static native nativeGetDisplayLabel(II)C
.end method

.method private static native nativeGetEvents(I[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(IIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(I)I
.end method

.method private static native nativeGetMatch(II[CI)C
.end method

.method private static native nativeGetNumber(II)C
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->nativeDispose(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 2
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result p1

    .line 3
    sget-object p2, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p1, -0x80000000

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public getDisplayLabel(I)C
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result p1

    return p1
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(I[C)[Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "chars must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    .line 2
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 3
    iget v1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v1, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(IIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 2
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 4
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(II)C

    move-result v0

    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 5
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v2, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v2

    aput-char v2, v0, v1

    .line 6
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v1

    aput-char v1, v0, v2

    .line 7
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    const/4 v3, 0x2

    invoke-static {v1, p1, v3}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v1

    aput-char v1, v0, v3

    .line 8
    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result p1

    aput-char p1, p2, v1

    return v2

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "results.meta.length must be >= 4"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKeyboardType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(I)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p1

    return p1
.end method

.method public getMatch(I[CI)C
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 3
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(II[CI)C

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chars must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModifierBehavior()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber(I)C
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(II)C

    move-result p1

    return p1
.end method

.method public isPrintingKey(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p2, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {p2, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parcel must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
