.class public final enum Landroid/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITVE_X:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum POSITVE_Y:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum POSITVE_Z:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 2
    new-instance v1, Landroid/renderscript/Type$CubemapFace;

    const-string v3, "NEGATIVE_X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 3
    new-instance v3, Landroid/renderscript/Type$CubemapFace;

    const-string v5, "POSITIVE_Y"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 4
    new-instance v5, Landroid/renderscript/Type$CubemapFace;

    const-string v7, "NEGATIVE_Y"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 5
    new-instance v7, Landroid/renderscript/Type$CubemapFace;

    const-string v9, "POSITIVE_Z"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 6
    new-instance v9, Landroid/renderscript/Type$CubemapFace;

    const-string v11, "NEGATIVE_Z"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 7
    new-instance v11, Landroid/renderscript/Type$CubemapFace;

    const-string v13, "POSITVE_X"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 8
    new-instance v13, Landroid/renderscript/Type$CubemapFace;

    const-string v15, "POSITVE_Y"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v6}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 9
    new-instance v15, Landroid/renderscript/Type$CubemapFace;

    const-string v14, "POSITVE_Z"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v10}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    const/16 v14, 0x9

    new-array v14, v14, [Landroid/renderscript/Type$CubemapFace;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

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
    iput p3, p0, Landroid/renderscript/Type$CubemapFace;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Type$CubemapFace;
    .locals 1

    .line 1
    const-class v0, Landroid/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Type$CubemapFace;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Type$CubemapFace;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v0}, [Landroid/renderscript/Type$CubemapFace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Type$CubemapFace;

    return-object v0
.end method
