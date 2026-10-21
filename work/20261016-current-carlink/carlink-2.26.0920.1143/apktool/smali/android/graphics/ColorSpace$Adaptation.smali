.class public final enum Landroid/graphics/ColorSpace$Adaptation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Adaptation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Adaptation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum CIECAT02:Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum VON_KRIES:Landroid/graphics/ColorSpace$Adaptation;


# instance fields
.field final mTransform:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/ColorSpace$Adaptation;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v2, v1, [F

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    const-string v3, "BRADFORD"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v0, v3, v4, v2}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    .line 17
    .line 18
    new-instance v2, Landroid/graphics/ColorSpace$Adaptation;

    .line 19
    .line 20
    new-array v3, v1, [F

    .line 21
    .line 22
    fill-array-data v3, :array_1

    .line 23
    .line 24
    .line 25
    const-string v5, "VON_KRIES"

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    invoke-direct {v2, v5, v6, v3}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Landroid/graphics/ColorSpace$Adaptation;->VON_KRIES:Landroid/graphics/ColorSpace$Adaptation;

    .line 32
    .line 33
    new-instance v3, Landroid/graphics/ColorSpace$Adaptation;

    .line 34
    .line 35
    new-array v1, v1, [F

    .line 36
    .line 37
    fill-array-data v1, :array_2

    .line 38
    .line 39
    .line 40
    const-string v5, "CIECAT02"

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    invoke-direct {v3, v5, v7, v1}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 44
    .line 45
    .line 46
    sput-object v3, Landroid/graphics/ColorSpace$Adaptation;->CIECAT02:Landroid/graphics/ColorSpace$Adaptation;

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    new-array v1, v1, [Landroid/graphics/ColorSpace$Adaptation;

    .line 50
    .line 51
    aput-object v0, v1, v4

    .line 52
    .line 53
    aput-object v2, v1, v6

    .line 54
    .line 55
    aput-object v3, v1, v7

    .line 56
    .line 57
    sput-object v1, Landroid/graphics/ColorSpace$Adaptation;->$VALUES:[Landroid/graphics/ColorSpace$Adaptation;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        -0x4273b646    # -0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 4
        0x3eccec42    # 0.40024f
        -0x419844d0    # -0.2263f
        0x0
        0x3f352546    # 0.7076f
        0x3f952935
        0x0
        -0x425a8049    # -0.08081f
        0x3d3b2fec    # 0.0457f
        0x3f6b1077
    .end array-data

    :array_2
    .array-data 4
        0x3f3b98c8    # 0.7328f
        -0x40cbe0df    # -0.7036f
        0x3b449ba6    # 0.003f
        0x3edbf488    # 0.4296f
        0x3fd947ae    # 1.6975f
        0x3c5ed289    # 0.0136f
        -0x41d9b3d0    # -0.1624f
        0x3bc7e282    # 0.0061f
        0x3f7bc01a    # 0.9834f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Adaptation;
    .locals 1

    const-class v0, Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorSpace$Adaptation;

    return-object p0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Adaptation;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->$VALUES:[Landroid/graphics/ColorSpace$Adaptation;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Adaptation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Adaptation;

    return-object v0
.end method
