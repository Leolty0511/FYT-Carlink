.class public final enum Landroid/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroid/renderscript/Sampler$Value;

    .line 2
    .line 3
    const-string v1, "NEAREST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Sampler$Value;

    .line 12
    .line 13
    const-string v3, "LINEAR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 20
    .line 21
    new-instance v3, Landroid/renderscript/Sampler$Value;

    .line 22
    .line 23
    const-string v5, "LINEAR_MIP_LINEAR"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 30
    .line 31
    new-instance v5, Landroid/renderscript/Sampler$Value;

    .line 32
    .line 33
    const-string v7, "LINEAR_MIP_NEAREST"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x5

    .line 37
    invoke-direct {v5, v7, v8, v9}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    .line 41
    .line 42
    new-instance v7, Landroid/renderscript/Sampler$Value;

    .line 43
    .line 44
    const-string v10, "WRAP"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    invoke-direct {v7, v10, v11, v8}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 51
    .line 52
    new-instance v10, Landroid/renderscript/Sampler$Value;

    .line 53
    .line 54
    const-string v12, "CLAMP"

    .line 55
    .line 56
    invoke-direct {v10, v12, v9, v11}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 60
    .line 61
    new-instance v12, Landroid/renderscript/Sampler$Value;

    .line 62
    .line 63
    const-string v13, "MIRRORED_REPEAT"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v12, v13, v14, v14}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Landroid/renderscript/Sampler$Value;

    .line 73
    .line 74
    aput-object v0, v13, v2

    .line 75
    .line 76
    aput-object v1, v13, v4

    .line 77
    .line 78
    aput-object v3, v13, v6

    .line 79
    .line 80
    aput-object v5, v13, v8

    .line 81
    .line 82
    aput-object v7, v13, v11

    .line 83
    .line 84
    aput-object v10, v13, v9

    .line 85
    .line 86
    aput-object v12, v13, v14

    .line 87
    .line 88
    sput-object v13, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    .line 89
    .line 90
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
    iput p3, p0, Landroid/renderscript/Sampler$Value;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Sampler$Value;
    .locals 1

    const-class v0, Landroid/renderscript/Sampler$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Sampler$Value;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Sampler$Value;
    .locals 1

    sget-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0}, [Landroid/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
