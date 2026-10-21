.class public Lk0/hh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hh;


# direct methods
.method public constructor <init>(Lk0/hh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hh$b;->a:Lk0/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v3, :cond_5

    const/16 v3, 0xa

    if-eq v5, v3, :cond_4

    const/16 v3, 0xd

    if-eq v5, v3, :cond_3

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_1

    if-eq v5, v0, :cond_2

    if-eq v5, v7, :cond_4

    aput v0, v1, v9

    goto :goto_2

    :cond_1
    aput v0, v1, v9

    goto :goto_2

    :cond_2
    aput v9, v1, v9

    .line 3
    sget v3, Lo0/e;->C:I

    aput v3, v1, v8

    goto :goto_2

    :cond_3
    const/16 v3, 0xc

    aput v3, v1, v9

    goto :goto_2

    :cond_4
    aput v7, v1, v9

    .line 4
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v8

    goto :goto_2

    :cond_5
    aput v3, v1, v9

    .line 5
    sget v5, Lw0/d;->h:I

    const/high16 v9, 0x10000

    if-ne v5, v9, :cond_6

    aput v2, v1, v8

    goto :goto_1

    :cond_6
    const v9, 0x10001

    if-ne v5, v9, :cond_7

    aput v2, v1, v8

    goto :goto_1

    :cond_7
    const v9, 0x10002

    if-ne v5, v9, :cond_8

    aput v2, v1, v8

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    if-ne v5, v3, :cond_a

    :cond_9
    const/16 v3, 0x10

    aput v3, v1, v8

    .line 6
    :cond_a
    :goto_1
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v4

    .line 7
    sget v3, Lw0/d;->j:I

    .line 8
    rem-int/lit8 v4, v3, 0x6

    const/4 v5, 0x6

    if-nez v4, :cond_b

    if-eqz v3, :cond_b

    aput v5, v1, v5

    goto :goto_2

    :cond_b
    aput v4, v1, v5

    :goto_2
    new-array v3, v7, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_c

    add-int/lit8 v4, v2, 0x1

    .line 9
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 10
    :cond_c
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
