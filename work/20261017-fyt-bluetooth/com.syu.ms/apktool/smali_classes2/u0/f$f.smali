.class public Lu0/f$f;
.super Lz/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x16

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 2
    invoke-static {p1, p2, p3}, Lu0/f;->E([BII)V

    :goto_0
    return-void
.end method
