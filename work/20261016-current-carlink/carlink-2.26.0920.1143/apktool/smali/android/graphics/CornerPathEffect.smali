.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Landroid/graphics/PathEffect;->native_instance:J

    .line 9
    .line 10
    return-void
.end method

.method private static native nativeCreate(F)J
.end method
