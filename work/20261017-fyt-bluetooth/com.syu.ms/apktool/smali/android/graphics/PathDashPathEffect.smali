.class public Landroid/graphics/PathDashPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathDashPathEffect$Style;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    iget p4, p4, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/PathDashPathEffect;->nativeCreate(IFFI)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(IFFI)I
.end method
