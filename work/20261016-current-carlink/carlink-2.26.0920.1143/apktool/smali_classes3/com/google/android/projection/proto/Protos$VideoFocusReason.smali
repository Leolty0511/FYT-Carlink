.class public final enum Lcom/google/android/projection/proto/Protos$VideoFocusReason;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFocusReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$VideoFocusReason;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final enum LAUNCH_NATIVE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final LAUNCH_NATIVE_VALUE:I = 0x2

.field public static final enum PHONE_SCREEN_OFF:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final PHONE_SCREEN_OFF_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final UNKNOWN_VALUE:I = 0x0

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final enum VIDEO_FOCUS_REASON_LAST_MODE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final VIDEO_FOCUS_REASON_LAST_MODE_VALUE:I = 0x3

.field public static final enum VIDEO_FOCUS_REASON_USER_SELECTION:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

.field public static final VIDEO_FOCUS_REASON_USER_SELECTION_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$VideoFocusReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->UNKNOWN:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->PHONE_SCREEN_OFF:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->LAUNCH_NATIVE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_LAST_MODE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_USER_SELECTION:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->UNKNOWN:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 12
    .line 13
    const-string v1, "PHONE_SCREEN_OFF"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->PHONE_SCREEN_OFF:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 22
    .line 23
    const-string v1, "LAUNCH_NATIVE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->LAUNCH_NATIVE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 32
    .line 33
    const-string v1, "VIDEO_FOCUS_REASON_LAST_MODE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_LAST_MODE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 42
    .line 43
    const-string v1, "VIDEO_FOCUS_REASON_USER_SELECTION"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_USER_SELECTION:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 50
    .line 51
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->$values()[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->$VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason$1;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusReason$1;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->values()[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 69
    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_USER_SELECTION:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VIDEO_FOCUS_REASON_LAST_MODE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->LAUNCH_NATIVE:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->PHONE_SCREEN_OFF:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->UNKNOWN:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 8
    .line 9
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$VideoFocusReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->forNumber(I)Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$VideoFocusReason;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->$VALUES:[Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$VideoFocusReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
