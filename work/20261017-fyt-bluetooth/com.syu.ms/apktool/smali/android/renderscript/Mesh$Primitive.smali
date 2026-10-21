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
.field public mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    .line 2
    new-instance v1, Landroid/renderscript/Mesh$Primitive;

    const-string v3, "LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    .line 3
    new-instance v3, Landroid/renderscript/Mesh$Primitive;

    const-string v5, "LINE_STRIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 4
    new-instance v5, Landroid/renderscript/Mesh$Primitive;

    const-string v7, "TRIANGLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    .line 5
    new-instance v7, Landroid/renderscript/Mesh$Primitive;

    const-string v9, "TRIANGLE_STRIP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 6
    new-instance v9, Landroid/renderscript/Mesh$Primitive;

    const-string v11, "TRIANGLE_FAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/renderscript/Mesh$Primitive;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

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
    iput p3, p0, Landroid/renderscript/Mesh$Primitive;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Mesh$Primitive;
    .locals 1

    .line 1
    const-class v0, Landroid/renderscript/Mesh$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Mesh$Primitive;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Mesh$Primitive;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0}, [Landroid/renderscript/Mesh$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Mesh$Primitive;

    return-object v0
.end method
