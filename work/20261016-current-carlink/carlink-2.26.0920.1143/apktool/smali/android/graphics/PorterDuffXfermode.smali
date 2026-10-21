.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    .line 5
    .line 6
    iput p1, p0, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 7
    .line 8
    return-void
.end method
