.class public Li1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$a;->a:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Li1/w$a;->a:Li1/w;

    iget v1, v0, Li1/w;->g:I

    .line 2
    sget v2, Lu0/b;->J2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    or-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, -0x2

    .line 3
    :goto_0
    sget v4, Lu0/b;->K2:I

    const/4 v5, 0x2

    if-ne v4, v3, :cond_1

    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, -0x3

    .line 4
    :goto_1
    sget v4, Lu0/b;->L2:I

    const/4 v6, 0x4

    if-ne v4, v3, :cond_2

    or-int/2addr v2, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v2, v2, -0x5

    .line 5
    :goto_2
    iget v4, v0, Li1/w;->h:I

    if-eq v4, v2, :cond_3

    .line 6
    iput v2, v0, Li1/w;->h:I

    .line 7
    sget-boolean v4, Li1/w;->G:Z

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    new-array v4, v4, [I

    const/4 v7, 0x0

    const/4 v8, 0x3

    aput v8, v4, v7

    const/16 v7, 0x8

    aput v7, v4, v3

    aput v1, v4, v5

    aput v2, v4, v8

    iget v1, v0, Li1/w;->i:I

    aput v1, v4, v6

    const/4 v1, 0x5

    iget v2, v0, Li1/w;->j:I

    aput v2, v4, v1

    const/4 v1, 0x6

    iget v2, v0, Li1/w;->k:I

    aput v2, v4, v1

    const/4 v1, 0x7

    iget v2, v0, Li1/w;->l:I

    aput v2, v4, v1

    iget v1, v0, Li1/w;->n:I

    aput v1, v4, v7

    const/16 v1, 0x9

    iget v2, v0, Li1/w;->o:I

    aput v2, v4, v1

    invoke-virtual {v0, v4}, Li1/w;->h([I)V

    :cond_3
    return-void
.end method
