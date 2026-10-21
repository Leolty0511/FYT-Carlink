.class public Landroid/graphics/SumPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 5
    .line 6
    iget-wide p1, p2, Landroid/graphics/PathEffect;->native_instance:J

    .line 7
    .line 8
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/SumPathEffect;->nativeCreate(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Landroid/graphics/PathEffect;->native_instance:J

    .line 13
    .line 14
    return-void
.end method

.method private static native nativeCreate(JJ)J
.end method
