.class public final enum Lcom/google/android/projection/proto/Protos$PointerAction;
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
    name = "PointerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$PointerAction;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final enum ACTION_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final ACTION_DOWN_VALUE:I = 0x0

.field public static final enum ACTION_MOVED:Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final ACTION_MOVED_VALUE:I = 0x2

.field public static final enum ACTION_POINTER_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final ACTION_POINTER_DOWN_VALUE:I = 0x5

.field public static final enum ACTION_POINTER_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final ACTION_POINTER_UP_VALUE:I = 0x6

.field public static final enum ACTION_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

.field public static final ACTION_UP_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$PointerAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$PointerAction;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_MOVED:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 2
    .line 3
    const-string v1, "ACTION_DOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PointerAction;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 12
    .line 13
    const-string v1, "ACTION_UP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PointerAction;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 22
    .line 23
    const-string v1, "ACTION_MOVED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PointerAction;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_MOVED:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, 0x5

    .line 35
    const-string v3, "ACTION_POINTER_DOWN"

    .line 36
    .line 37
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$PointerAction;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    const/4 v2, 0x6

    .line 46
    const-string v3, "ACTION_POINTER_UP"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$PointerAction;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PointerAction;->$values()[Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->$VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/projection/proto/Protos$PointerAction$1;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$PointerAction$1;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PointerAction;->values()[Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 71
    .line 72
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$PointerAction;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$PointerAction;
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
    const/4 v0, 0x5

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_POINTER_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_MOVED:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_UP:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$PointerAction;->ACTION_DOWN:Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x25

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
            "Lcom/google/android/projection/proto/Protos$PointerAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$PointerAction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$PointerAction;->forNumber(I)Lcom/google/android/projection/proto/Protos$PointerAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$PointerAction;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PointerAction;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PointerAction;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$PointerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$PointerAction;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$PointerAction;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$PointerAction;->$VALUES:[Lcom/google/android/projection/proto/Protos$PointerAction;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$PointerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$PointerAction;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PointerAction;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PointerAction;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PointerAction;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
