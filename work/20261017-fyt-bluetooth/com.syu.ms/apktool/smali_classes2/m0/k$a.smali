.class public Lm0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:Lm0/k;


# direct methods
.method public constructor <init>(Lm0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/k$a;->b:Lm0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    new-array p1, p1, [B

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lm0/k$a;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        0x70t
        0x10t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x7t
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/k$a;->b:Lm0/k;

    invoke-static {v0}, Lm0/k;->N2(Lm0/k;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lm0/k$a;->b:Lm0/k;

    invoke-static {v0}, Lm0/k;->Q2(Lm0/k;)I

    .line 3
    iget-object v0, p0, Lm0/k$a;->b:Lm0/k;

    invoke-static {v0}, Lm0/k;->O2(Lm0/k;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm0/k$a;->b:Lm0/k;

    invoke-static {v0, v2}, Lm0/k;->P2(Lm0/k;I)I

    .line 5
    iget-object v0, p0, Lm0/k$a;->b:Lm0/k;

    invoke-static {v0}, Lm0/k;->R2(Lm0/k;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lm0/k$a;->a:[B

    invoke-static {v0}, Lm0/d;->m([B)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND TO CANBUS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/k$a;->a:[B

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
