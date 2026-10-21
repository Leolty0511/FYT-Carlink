.class public final enum Landroid/annotation/SdkConstant$SdkConstantType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SdkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkConstantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/SdkConstant$SdkConstantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    .line 2
    .line 3
    const-string v1, "ACTIVITY_INTENT_ACTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 10
    .line 11
    new-instance v1, Landroid/annotation/SdkConstant$SdkConstantType;

    .line 12
    .line 13
    const-string v3, "BROADCAST_INTENT_ACTION"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 20
    .line 21
    new-instance v3, Landroid/annotation/SdkConstant$SdkConstantType;

    .line 22
    .line 23
    const-string v5, "SERVICE_ACTION"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 30
    .line 31
    new-instance v5, Landroid/annotation/SdkConstant$SdkConstantType;

    .line 32
    .line 33
    const-string v7, "INTENT_CATEGORY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 40
    .line 41
    new-instance v7, Landroid/annotation/SdkConstant$SdkConstantType;

    .line 42
    .line 43
    const-string v9, "FEATURE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Landroid/annotation/SdkConstant$SdkConstantType;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    .line 65
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1

    const-class v0, Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/annotation/SdkConstant$SdkConstantType;

    return-object p0
.end method

.method public static values()[Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1

    sget-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-virtual {v0}, [Landroid/annotation/SdkConstant$SdkConstantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SdkConstant$SdkConstantType;

    return-object v0
.end method
