.class public final enum Landroid/graphics/Matrix$ScaleToFit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleToFit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Matrix$ScaleToFit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum CENTER:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum END:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum FILL:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum START:Landroid/graphics/Matrix$ScaleToFit;


# instance fields
.field public final nativeInt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Matrix$ScaleToFit;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 2
    new-instance v1, Landroid/graphics/Matrix$ScaleToFit;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 3
    new-instance v3, Landroid/graphics/Matrix$ScaleToFit;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 4
    new-instance v5, Landroid/graphics/Matrix$ScaleToFit;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Matrix$ScaleToFit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroid/graphics/Matrix$ScaleToFit;->$VALUES:[Landroid/graphics/Matrix$ScaleToFit;

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
    iput p3, p0, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/Matrix$ScaleToFit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix$ScaleToFit;

    return-object p0
.end method

.method public static values()[Landroid/graphics/Matrix$ScaleToFit;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->$VALUES:[Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0}, [Landroid/graphics/Matrix$ScaleToFit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Matrix$ScaleToFit;

    return-object v0
.end method
