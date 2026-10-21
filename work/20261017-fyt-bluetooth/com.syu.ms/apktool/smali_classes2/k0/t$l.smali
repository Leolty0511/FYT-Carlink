.class public Lk0/t$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t;


# direct methods
.method public constructor <init>(Lk0/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t$l;->a:Lk0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/t$l;->a:Lk0/t;

    iget-object v0, v0, Lk0/t;->A:Ljava/lang/String;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/t$l;->a:Lk0/t;

    sget-object v3, Lh0/c;->h:Ljava/lang/String;

    iput-object v3, v0, Lk0/t;->A:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 3
    iput-object v1, v0, Lk0/t;->A:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    sget v3, Lh0/c;->E:I

    iget-object v4, p0, Lk0/t$l;->a:Lk0/t;

    invoke-static {v4}, Lk0/t;->n3(Lk0/t;)I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 6
    sget v3, Lh0/c;->E:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0xb

    if-ne v3, v4, :cond_3

    .line 7
    iget-object v3, p0, Lk0/t$l;->a:Lk0/t;

    invoke-static {v3}, Lk0/t;->n3(Lk0/t;)I

    move-result v3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lk0/t$l;->a:Lk0/t;

    .line 8
    invoke-static {v3}, Lk0/t;->n3(Lk0/t;)I

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lk0/t$l;->a:Lk0/t;

    .line 9
    invoke-static {v3}, Lk0/t;->n3(Lk0/t;)I

    move-result v3

    if-ne v3, v6, :cond_8

    :cond_2
    new-array v3, v8, [I

    .line 10
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_2

    :cond_3
    if-eq v3, v7, :cond_4

    if-eq v3, v5, :cond_4

    if-ne v3, v6, :cond_8

    :cond_4
    if-eq v3, v6, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v5, :cond_5

    goto :goto_2

    :cond_5
    new-array v3, v8, [I

    .line 11
    fill-array-data v3, :array_1

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_2

    :cond_6
    new-array v3, v8, [I

    .line 12
    fill-array-data v3, :array_2

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_2

    :cond_7
    new-array v3, v8, [I

    .line 13
    fill-array-data v3, :array_3

    invoke-static {v3}, Lz/k;->s([I)V

    .line 14
    :cond_8
    :goto_2
    iget-object v3, p0, Lk0/t$l;->a:Lk0/t;

    sget v4, Lh0/c;->E:I

    invoke-static {v3, v4}, Lk0/t;->o3(Lk0/t;I)I

    :cond_9
    if-eqz v0, :cond_a

    .line 15
    iget-object v0, p0, Lk0/t$l;->a:Lk0/t;

    iget-object v1, v0, Lk0/t;->A:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lk0/t;->f3(Lk0/t;BLjava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_a
    iget-object v0, p0, Lk0/t$l;->a:Lk0/t;

    iget-object v0, v0, Lk0/t;->A:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17
    :cond_b
    iget-object v0, p0, Lk0/t$l;->a:Lk0/t;

    invoke-static {v0, v2, v1}, Lk0/t;->f3(Lk0/t;BLjava/lang/String;)V

    :cond_c
    :goto_3
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x8
        0x5
        0x40
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x8
        0x5
        0x40
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc0
        0x8
        0x5
        0x40
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc0
        0x8
        0x5
        0x40
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
