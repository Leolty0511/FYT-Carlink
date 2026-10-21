.class public Lm0/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/x;


# direct methods
.method public constructor <init>(Lm0/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/x$a;->a:Lm0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->N2(Lm0/x;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->Q2(Lm0/x;)I

    .line 3
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->O2(Lm0/x;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0, v2}, Lm0/x;->P2(Lm0/x;I)I

    .line 5
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->R2(Lm0/x;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "CAN"

    const-string v3, "REQUEST CANBUS UPDATE"

    .line 6
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->S2(Lm0/x;)I

    move-result v0

    const/16 v3, -0x20

    const/16 v4, 0x2e

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ge v0, v7, :cond_2

    .line 8
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->S2(Lm0/x;)I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Ll0/z;->a:Ll0/a;

    new-array v5, v5, [I

    aput v4, v5, v2

    aput v8, v5, v6

    aput v3, v5, v8

    iget-object v2, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v2}, Lm0/x;->V2(Lm0/x;)[B

    move-result-object v2

    iget-object v3, p0, Lm0/x$a;->a:Lm0/x;

    iget v4, v3, Lm0/x;->n:I

    sub-int/2addr v4, v8

    aget-byte v2, v2, v4

    aput v2, v5, v7

    invoke-static {v3}, Lm0/x;->V2(Lm0/x;)[B

    move-result-object v2

    iget-object v3, p0, Lm0/x$a;->a:Lm0/x;

    iget v3, v3, Lm0/x;->n:I

    sub-int/2addr v3, v6

    aget-byte v2, v2, v3

    aput v2, v5, v1

    invoke-virtual {v0, v5}, Ll0/a;->f([I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->U2(Lm0/x;)I

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->S2(Lm0/x;)I

    move-result v0

    if-lt v0, v7, :cond_5

    .line 12
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->S2(Lm0/x;)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 13
    sget-object v0, Ll0/z;->a:Ll0/a;

    new-array v5, v5, [I

    aput v4, v5, v2

    aput v8, v5, v6

    aput v3, v5, v8

    iget-object v3, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v3}, Lm0/x;->V2(Lm0/x;)[B

    move-result-object v3

    iget-object v4, p0, Lm0/x$a;->a:Lm0/x;

    iget v9, v4, Lm0/x;->n:I

    sub-int/2addr v9, v8

    aget-byte v3, v3, v9

    aput v3, v5, v7

    invoke-static {v4}, Lm0/x;->V2(Lm0/x;)[B

    move-result-object v3

    iget-object v4, p0, Lm0/x$a;->a:Lm0/x;

    iget v4, v4, Lm0/x;->n:I

    sub-int/2addr v4, v6

    aget-byte v3, v3, v4

    aput v3, v5, v1

    invoke-virtual {v0, v5}, Ll0/a;->f([I)V

    .line 14
    :cond_3
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->U2(Lm0/x;)I

    .line 15
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0}, Lm0/x;->S2(Lm0/x;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 16
    iget-object v0, p0, Lm0/x$a;->a:Lm0/x;

    invoke-static {v0, v2}, Lm0/x;->T2(Lm0/x;I)I

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method
