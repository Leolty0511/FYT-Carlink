.class public Lk0/zh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zh;


# direct methods
.method public constructor <init>(Lk0/zh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v0}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v0

    sget v1, Lu0/b;->t0:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v0}, Lk0/zh;->d3(Lk0/zh;)I

    move-result v0

    sget v1, Lu0/b;->s0:I

    if-eq v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    sget v1, Lu0/b;->t0:I

    invoke-static {v0, v1}, Lk0/zh;->c3(Lk0/zh;I)I

    .line 3
    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    sget v1, Lu0/b;->s0:I

    invoke-static {v0, v1}, Lk0/zh;->e3(Lk0/zh;I)I

    .line 4
    sget v0, Lu0/b;->X1:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v0}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v0

    const v2, 0x8000

    and-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    const/high16 v4, 0x10000

    invoke-static {v0}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-static {v0, v4}, Lk0/zh;->c3(Lk0/zh;I)I

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v4, 0x9

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    const/16 v2, -0x79

    aput v2, v4, v3

    const/4 v2, 0x6

    aput v2, v4, v1

    const/4 v5, 0x3

    shl-int/2addr v0, v3

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    aput v0, v4, v5

    const/4 v0, 0x4

    .line 7
    iget-object v1, p0, Lk0/zh$a;->a:Lk0/zh;

    .line 8
    invoke-static {v1}, Lk0/zh;->d3(Lk0/zh;)I

    move-result v1

    const/16 v3, 0x8

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v1}, Lk0/zh;->d3(Lk0/zh;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    .line 9
    invoke-static {v0}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v2

    const/4 v0, 0x7

    iget-object v1, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v1}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v1

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    iget-object v0, p0, Lk0/zh$a;->a:Lk0/zh;

    invoke-static {v0}, Lk0/zh;->b3(Lk0/zh;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v3

    .line 10
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
