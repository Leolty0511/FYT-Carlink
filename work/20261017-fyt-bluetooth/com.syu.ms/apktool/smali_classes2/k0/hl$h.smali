.class public Lk0/hl$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hl;


# direct methods
.method public constructor <init>(Lk0/hl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hl$h;->a:Lk0/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v5

    .line 2
    :goto_1
    sget v8, Lu0/b;->D:I

    if-ne v8, v7, :cond_6

    new-array v5, v5, [I

    const/16 v8, 0xe3

    aput v8, v5, v4

    const/4 v4, 0x6

    aput v4, v5, v3

    const/16 v3, 0x9

    aput v3, v5, v7

    aput v2, v5, v6

    aput v0, v5, v1

    .line 3
    invoke-static {v5}, Lz/k;->s([I)V

    :cond_6
    return-void
.end method
