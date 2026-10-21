.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 6
    .line 7
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 8
    .line 9
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 10
    .line 11
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 12
    .line 13
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 14
    .line 15
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return p0
.end method

.method public static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return p0
.end method

.method public static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return p0
.end method

.method public static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return p0
.end method

.method public static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return p0
.end method

.method public static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return p0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-le p2, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 6
    .line 7
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "Invalid dimensions"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-le p2, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 6
    .line 7
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "Invalid dimensions"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-le p2, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 6
    .line 7
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "Invalid dimensions"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
