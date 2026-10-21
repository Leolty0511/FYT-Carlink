.class public Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(F)I
    .locals 4

    const/high16 v0, 0x4b800000    # 1.6777216E7f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    const-wide/32 v2, 0x800000

    add-long/2addr v0, v2

    const/16 p0, 0x18

    shr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method
