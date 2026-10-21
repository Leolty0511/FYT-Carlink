.class public final Lcom/lsec/core/frame/ninepatch/Div;
.super Ljava/lang/Object;
.source "Div.java"


# instance fields
.field public start:I

.field public stop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    .line 14
    iput p2, p0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    .line 15
    return-void
.end method
