.class public Lm0/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:Lm0/y;


# direct methods
.method public constructor <init>(Lm0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/y$a;->b:Lm0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lm0/y$a;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v0}, Lm0/y;->N2(Lm0/y;)[B

    move-result-object v0

    iget-object v1, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v1}, Lm0/y;->O2(Lm0/y;)I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    iget-object v3, p0, Lm0/y$a;->a:[B

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v0}, Lm0/y;->P2(Lm0/y;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v0}, Lm0/y;->S2(Lm0/y;)I

    .line 4
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v0}, Lm0/y;->Q2(Lm0/y;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/y;->R2(Lm0/y;I)I

    .line 6
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    invoke-static {v0}, Lm0/y;->T2(Lm0/y;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lm0/y$a;->b:Lm0/y;

    iget-object v1, p0, Lm0/y$a;->a:[B

    invoke-static {v0, v1}, Lm0/y;->U2(Lm0/y;[B)V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
