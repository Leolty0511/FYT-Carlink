.class public final enum Landroid/renderscript/ProgramRaster$CullMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CullMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramRaster$CullMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum BACK:Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum FRONT:Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum NONE:Landroid/renderscript/ProgramRaster$CullMode;


# instance fields
.field public mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    .line 2
    new-instance v1, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v3, "FRONT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    .line 3
    new-instance v3, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/renderscript/ProgramRaster$CullMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroid/renderscript/ProgramRaster$CullMode;->$VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

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
    iput p3, p0, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1

    .line 1
    const-class v0, Landroid/renderscript/ProgramRaster$CullMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/ProgramRaster$CullMode;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->$VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramRaster$CullMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method
