.class public Lk0/yh$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yh;


# direct methods
.method public constructor <init>(Lk0/yh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    sget v1, Lu0/b;->t0:I

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v0, v1}, Lk0/yh;->n3(Lk0/yh;I)I

    .line 2
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v0

    iget-object v1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->o3(Lk0/yh;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3
    sget v0, Lu0/b;->X1:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 4
    sget v0, Lk0/nt;->a:I

    const v3, 0x2601b7

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0x16

    const/16 v7, -0x7d

    const/16 v8, 0xe3

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-eq v0, v3, :cond_1

    const v3, 0x8401c4

    if-eq v0, v3, :cond_1

    const v3, 0x2701b7

    if-eq v0, v3, :cond_1

    const v3, 0xb401c6

    if-eq v0, v3, :cond_1

    const v3, 0xb501c6

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v9, [I

    aput v8, v0, v11

    aput v7, v0, v10

    aput v12, v0, v1

    aput v6, v0, v12

    .line 5
    iget-object v1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    iget-object v1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    const/high16 v13, 0x10000

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v14

    sub-int/2addr v13, v14

    and-int/2addr v2, v13

    invoke-static {v0, v2}, Lk0/yh;->n3(Lk0/yh;I)I

    .line 8
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v2

    or-int/2addr v2, v3

    invoke-static {v0, v2}, Lk0/yh;->n3(Lk0/yh;I)I

    :cond_2
    new-array v0, v9, [I

    aput v8, v0, v11

    aput v7, v0, v10

    aput v12, v0, v1

    aput v6, v0, v12

    .line 10
    iget-object v1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    iget-object v1, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    const/16 v0, 0x7e

    new-array v1, v10, [I

    .line 11
    iget-object v2, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v2}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v2

    aput v2, v1, v11

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lk0/yh$k;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->m3(Lk0/yh;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->p3(Lk0/yh;I)I

    :cond_4
    return-void
.end method
