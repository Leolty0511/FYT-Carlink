.class public Lk0/s1$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s1;


# direct methods
.method public constructor <init>(Lk0/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s1$l;->a:Lk0/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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

    :goto_2
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

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
