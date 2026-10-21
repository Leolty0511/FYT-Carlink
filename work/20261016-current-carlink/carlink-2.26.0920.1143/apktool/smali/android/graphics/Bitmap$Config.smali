.class public final enum Landroid/graphics/Bitmap$Config;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$Config;

.field public static final enum ALPHA_8:Landroid/graphics/Bitmap$Config;

.field public static final enum ARGB_4444:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ARGB_8888:Landroid/graphics/Bitmap$Config;

.field public static final enum HARDWARE:Landroid/graphics/Bitmap$Config;

.field public static final enum RGBA_F16:Landroid/graphics/Bitmap$Config;

.field public static final enum RGB_565:Landroid/graphics/Bitmap$Config;

.field private static sConfigs:[Landroid/graphics/Bitmap$Config;


# instance fields
.field final nativeInt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    const-string v1, "ALPHA_8"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    const-string v4, "RGB_565"

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-direct {v1, v4, v3, v5}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    new-instance v4, Landroid/graphics/Bitmap$Config;

    .line 23
    .line 24
    const-string v6, "ARGB_4444"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x4

    .line 28
    invoke-direct {v4, v6, v7, v8}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    new-instance v6, Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    const-string v9, "ARGB_8888"

    .line 36
    .line 37
    const/4 v10, 0x5

    .line 38
    invoke-direct {v6, v9, v5, v10}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    new-instance v9, Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    const-string v11, "RGBA_F16"

    .line 46
    .line 47
    const/4 v12, 0x6

    .line 48
    invoke-direct {v9, v11, v8, v12}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v9, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    new-instance v11, Landroid/graphics/Bitmap$Config;

    .line 54
    .line 55
    const-string v13, "HARDWARE"

    .line 56
    .line 57
    const/4 v14, 0x7

    .line 58
    invoke-direct {v11, v13, v10, v14}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v11, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 62
    .line 63
    new-array v13, v12, [Landroid/graphics/Bitmap$Config;

    .line 64
    .line 65
    aput-object v0, v13, v2

    .line 66
    .line 67
    aput-object v1, v13, v3

    .line 68
    .line 69
    aput-object v4, v13, v7

    .line 70
    .line 71
    aput-object v6, v13, v5

    .line 72
    .line 73
    aput-object v9, v13, v8

    .line 74
    .line 75
    aput-object v11, v13, v10

    .line 76
    .line 77
    sput-object v13, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    .line 78
    .line 79
    const/16 v13, 0x8

    .line 80
    .line 81
    new-array v13, v13, [Landroid/graphics/Bitmap$Config;

    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    aput-object v15, v13, v2

    .line 85
    .line 86
    aput-object v0, v13, v3

    .line 87
    .line 88
    aput-object v15, v13, v7

    .line 89
    .line 90
    aput-object v1, v13, v5

    .line 91
    .line 92
    aput-object v4, v13, v8

    .line 93
    .line 94
    aput-object v6, v13, v10

    .line 95
    .line 96
    aput-object v9, v13, v12

    .line 97
    .line 98
    aput-object v11, v13, v14

    .line 99
    .line 100
    sput-object v13, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    .line 101
    .line 102
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
    iput p3, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 5
    .line 6
    return-void
.end method

.method public static nativeToConfig(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
    .locals 1

    const-class v0, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static values()[Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
