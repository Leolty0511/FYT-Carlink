.class public Lv0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:B

.field public b:I

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lv0/e;->a:B

    .line 3
    iput v0, p0, Lv0/e;->b:I

    const/16 v0, 0x7e

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lv0/e;->c:[B

    return-void
.end method
