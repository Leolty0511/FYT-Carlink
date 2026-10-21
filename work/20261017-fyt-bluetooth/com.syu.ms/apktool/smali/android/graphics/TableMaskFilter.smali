.class public Landroid/graphics/TableMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "SourceFile"


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 6
    iput p1, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/graphics/TableMaskFilter;->nativeNewTable([B)I

    move-result p1

    iput p1, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "table.length must be >= 256"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static CreateClipTable(II)Landroid/graphics/TableMaskFilter;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0, p1}, Landroid/graphics/TableMaskFilter;->nativeNewClip(II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/TableMaskFilter;-><init>(I)V

    return-object v0
.end method

.method public static CreateGammaTable(F)Landroid/graphics/TableMaskFilter;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0}, Landroid/graphics/TableMaskFilter;->nativeNewGamma(F)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/TableMaskFilter;-><init>(I)V

    return-object v0
.end method

.method private static native nativeNewClip(II)I
.end method

.method private static native nativeNewGamma(F)I
.end method

.method private static native nativeNewTable([B)I
.end method
