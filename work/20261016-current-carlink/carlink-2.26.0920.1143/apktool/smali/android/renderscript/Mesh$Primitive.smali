.class public final enum Landroid/renderscript/Mesh$Primitive;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Mesh$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

.field public static final enum POINT:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    .line 2
    .line 3
    const-string v1, "POINT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Mesh$Primitive;

    .line 12
    .line 13
    const-string v3, "LINE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    .line 20
    .line 21
    new-instance v3, Landroid/renderscript/Mesh$Primitive;

    .line 22
    .line 23
    const-string v5, "LINE_STRIP"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 30
    .line 31
    new-instance v5, Landroid/renderscript/Mesh$Primitive;

    .line 32
    .line 33
    const-string v7, "TRIANGLE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    .line 40
    .line 41
    new-instance v7, Landroid/renderscript/Mesh$Primitive;

    .line 42
    .line 43
    const-string v9, "TRIANGLE_STRIP"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 50
    .line 51
    new-instance v9, Landroid/renderscript/Mesh$Primitive;

    .line 52
    .line 53
    const-string v11, "TRIANGLE_FAN"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Landroid/renderscript/Mesh$Primitive;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    .line 77
    .line 78
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
    iput p3, p0, Landroid/renderscript/Mesh$Primitive;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Mesh$Primitive;
    .locals 1

    const-class v0, Landroid/renderscript/Mesh$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Mesh$Primitive;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Mesh$Primitive;
    .locals 1

    sget-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0}, [Landroid/renderscript/Mesh$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Mesh$Primitive;

    return-object v0
.end method
