.class public Lcom/lsec/core/util/MySize;
.super Ljava/lang/Object;
.source "MySize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/lsec/core/util/MySize;->width:I

    .line 9
    iput p2, p0, Lcom/lsec/core/util/MySize;->height:I

    .line 10
    return-void
.end method
