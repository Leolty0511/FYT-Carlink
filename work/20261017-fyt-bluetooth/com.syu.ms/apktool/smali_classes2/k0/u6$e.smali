.class public Lk0/u6$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u6;


# direct methods
.method public constructor <init>(Lk0/u6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2
    :goto_1
    sget v3, Lh0/c;->E:I

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eq v3, v5, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v7

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v6

    .line 3
    :goto_2
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-static {v8}, Lk0/u6;->e3(Lk0/u6;)I

    move-result v8

    sget v9, Lh0/c;->E:I

    if-eq v8, v9, :cond_5

    .line 4
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-static {v8, v9}, Lk0/u6;->f3(Lk0/u6;I)I

    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v2

    .line 5
    :goto_3
    iget-object v9, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-static {v9}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 6
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    sget-object v9, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lk0/u6;->c3(Lk0/u6;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-static {v8}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 8
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    const-string v9, ""

    invoke-static {v8, v9}, Lk0/u6;->c3(Lk0/u6;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    move v8, v1

    :cond_7
    if-eqz v8, :cond_8

    .line 9
    iget-object v8, p0, Lk0/u6$e;->a:Lk0/u6;

    invoke-static {v8}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lk0/u6;->d3(Lk0/u6;Ljava/lang/String;)V

    :cond_8
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    or-int/2addr v0, v2

    or-int/2addr v0, v2

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    int-to-byte v0, v0

    new-array v3, v4, [I

    const/16 v4, -0x1d

    aput v4, v3, v2

    const/16 v4, -0x3b

    aput v4, v3, v1

    aput v6, v3, v6

    aput v2, v3, v5

    aput v0, v3, v7

    .line 10
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
