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
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget p1, p4, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    .line 9
    .line 10
    invoke-static {v0, v1, p2, p3, p1}, Landroid/graphics/PathDashPathEffect;->nativeCreate(JFFI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroid/graphics/PathEffect;->native_instance:J

    .line 15
    .line 16
    return-void
.end method

.method private static native nativeCreate(JFFI)J
.end method
