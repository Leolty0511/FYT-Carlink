.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iput-wide p1, p0, Landroid/graphics/DrawFilter;->mNativeInt:J

    .line 9
    .line 10
    return-void
.end method

.method private static native nativeConstructor(II)J
.end method
