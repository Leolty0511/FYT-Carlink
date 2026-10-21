.class public Lk0/ym$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ym;


# direct methods
.method public constructor <init>(Lk0/ym;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ym$b;->a:Lk0/ym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    const/16 v3, 0x25

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    add-int/lit8 v2, v3, 0x6

    .line 3
    new-array v2, v2, [I

    const/16 v4, 0xe3

    .line 4
    aput v4, v2, v1

    const/16 v4, 0x71

    const/4 v5, 0x1

    .line 5
    aput v4, v2, v5

    add-int/lit8 v4, v3, 0x3

    const/4 v6, 0x2

    .line 6
    aput v4, v2, v6

    const/4 v4, 0x5

    const/4 v7, 0x3

    .line 7
    aput v4, v2, v7

    .line 8
    iget-object v8, p0, Lk0/ym$b;->a:Lk0/ym;

    invoke-static {v8}, Lk0/ym;->b3(Lk0/ym;)I

    move-result v8

    sget v9, Lh0/c;->E:I

    if-eq v8, v9, :cond_6

    const/4 v8, 0x4

    if-eq v9, v7, :cond_5

    if-eq v9, v8, :cond_4

    if-eq v9, v4, :cond_2

    .line 9
    aput v1, v2, v8

    goto :goto_1

    .line 10
    :cond_2
    iget-object v7, p0, Lk0/ym$b;->a:Lk0/ym;

    invoke-static {v7}, Lk0/ym;->b3(Lk0/ym;)I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 11
    aput v6, v2, v8

    goto :goto_1

    .line 12
    :cond_3
    aput v8, v2, v8

    goto :goto_1

    .line 13
    :cond_4
    aput v5, v2, v8

    goto :goto_1

    .line 14
    :cond_5
    aput v7, v2, v8

    .line 15
    :goto_1
    iget-object v6, p0, Lk0/ym$b;->a:Lk0/ym;

    sget v7, Lh0/c;->E:I

    invoke-static {v6, v7}, Lk0/ym;->c3(Lk0/ym;I)I

    .line 16
    :cond_6
    aput v5, v2, v4

    if-lez v3, :cond_7

    :goto_2
    if-ge v1, v3, :cond_7

    add-int/lit8 v4, v1, 0x6

    .line 17
    aget-byte v5, v0, v1

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
