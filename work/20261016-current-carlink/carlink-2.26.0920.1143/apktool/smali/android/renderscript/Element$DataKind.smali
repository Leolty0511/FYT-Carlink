.class public final enum Landroid/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_YUV:Landroid/renderscript/Element$DataKind;

.field public static final enum USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/renderscript/Element$DataKind;

    .line 2
    .line 3
    const-string v1, "USER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Element$DataKind;

    .line 12
    .line 13
    const-string v3, "PIXEL_L"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x7

    .line 17
    invoke-direct {v1, v3, v4, v5}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    .line 21
    .line 22
    new-instance v3, Landroid/renderscript/Element$DataKind;

    .line 23
    .line 24
    const-string v6, "PIXEL_A"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const/16 v8, 0x8

    .line 28
    .line 29
    invoke-direct {v3, v6, v7, v8}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    .line 33
    .line 34
    new-instance v6, Landroid/renderscript/Element$DataKind;

    .line 35
    .line 36
    const/16 v9, 0x9

    .line 37
    .line 38
    const-string v10, "PIXEL_LA"

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    invoke-direct {v6, v10, v11, v9}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    sput-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    .line 45
    .line 46
    new-instance v9, Landroid/renderscript/Element$DataKind;

    .line 47
    .line 48
    const/16 v10, 0xa

    .line 49
    .line 50
    const-string v12, "PIXEL_RGB"

    .line 51
    .line 52
    const/4 v13, 0x4

    .line 53
    invoke-direct {v9, v12, v13, v10}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    sput-object v9, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    .line 57
    .line 58
    new-instance v10, Landroid/renderscript/Element$DataKind;

    .line 59
    .line 60
    const/16 v12, 0xb

    .line 61
    .line 62
    const-string v14, "PIXEL_RGBA"

    .line 63
    .line 64
    const/4 v15, 0x5

    .line 65
    invoke-direct {v10, v14, v15, v12}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    sput-object v10, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 69
    .line 70
    new-instance v12, Landroid/renderscript/Element$DataKind;

    .line 71
    .line 72
    const/16 v14, 0xc

    .line 73
    .line 74
    const-string v15, "PIXEL_DEPTH"

    .line 75
    .line 76
    const/4 v13, 0x6

    .line 77
    invoke-direct {v12, v15, v13, v14}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v12, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    .line 81
    .line 82
    new-instance v14, Landroid/renderscript/Element$DataKind;

    .line 83
    .line 84
    const-string v15, "PIXEL_YUV"

    .line 85
    .line 86
    const/16 v13, 0xd

    .line 87
    .line 88
    invoke-direct {v14, v15, v5, v13}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v14, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 92
    .line 93
    new-array v8, v8, [Landroid/renderscript/Element$DataKind;

    .line 94
    .line 95
    aput-object v0, v8, v2

    .line 96
    .line 97
    aput-object v1, v8, v4

    .line 98
    .line 99
    aput-object v3, v8, v7

    .line 100
    .line 101
    aput-object v6, v8, v11

    .line 102
    .line 103
    const/4 v0, 0x4

    .line 104
    aput-object v9, v8, v0

    .line 105
    .line 106
    const/4 v0, 0x5

    .line 107
    aput-object v10, v8, v0

    .line 108
    .line 109
    const/4 v0, 0x6

    .line 110
    aput-object v12, v8, v0

    .line 111
    .line 112
    aput-object v14, v8, v5

    .line 113
    .line 114
    sput-object v8, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    .line 115
    .line 116
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
    iput p3, p0, Landroid/renderscript/Element$DataKind;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
    .locals 1

    const-class v0, Landroid/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Element$DataKind;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Element$DataKind;
    .locals 1

    sget-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataKind;

    return-object v0
.end method
