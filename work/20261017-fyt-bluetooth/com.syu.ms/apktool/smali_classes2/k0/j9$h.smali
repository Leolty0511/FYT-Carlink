.class public Lk0/j9$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j9;


# direct methods
.method public constructor <init>(Lk0/j9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j9$h;->a:Lk0/j9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v2, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    const/16 v6, 0x10

    :goto_0
    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    or-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_2
    or-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    or-int/lit8 v6, v6, 0x2

    .line 2
    :goto_1
    sget-object v0, Lh0/c;->s:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_4
    move v0, v1

    .line 4
    :goto_2
    sget v7, Lh0/c;->C:I

    shl-int/lit8 v7, v7, 0x28

    and-int/lit16 v7, v7, 0xf0

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v7

    .line 5
    sget v7, Lh0/c;->P:I

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x8

    new-array v8, v8, [I

    const/16 v9, -0x1d

    aput v9, v8, v1

    const/16 v1, -0x3b

    const/4 v9, 0x1

    aput v1, v8, v9

    aput v5, v8, v5

    aput v0, v8, v3

    aput v6, v8, v4

    .line 6
    div-int/lit16 v0, v7, 0xe10

    aput v0, v8, v2

    const/4 v0, 0x6

    rem-int/lit16 v1, v7, 0xe10

    div-int/lit8 v1, v1, 0x3c

    aput v1, v8, v0

    const/4 v0, 0x7

    rem-int/lit8 v7, v7, 0x3c

    aput v7, v8, v0

    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method
