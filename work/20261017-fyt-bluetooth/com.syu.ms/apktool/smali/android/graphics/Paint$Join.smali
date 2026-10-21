.class public final enum Landroid/graphics/Paint$Join;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Join"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$Join;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Paint$Join;

.field public static final enum BEVEL:Landroid/graphics/Paint$Join;

.field public static final enum MITER:Landroid/graphics/Paint$Join;

.field public static final enum ROUND:Landroid/graphics/Paint$Join;


# instance fields
.field public final nativeInt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Paint$Join;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 2
    new-instance v1, Landroid/graphics/Paint$Join;

    const-string v3, "ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 3
    new-instance v3, Landroid/graphics/Paint$Join;

    const-string v5, "BEVEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Paint$Join;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

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
    iput p3, p0, Landroid/graphics/Paint$Join;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Join;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/Paint$Join;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method public static values()[Landroid/graphics/Paint$Join;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    invoke-virtual {v0}, [Landroid/graphics/Paint$Join;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$Join;

    return-object v0
.end method
