.class public Lk0/pr$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pr;


# direct methods
.method public constructor <init>(Lk0/pr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pr$c;->a:Lk0/pr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Ly0/f;->C0:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v2, v0, Lk0/pr;->l:I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v1, v0, Lk0/pr;->l:I

    .line 4
    :goto_1
    sget v0, Lu0/b;->D:I

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v4, v0, Lk0/pr;->m:I

    goto :goto_3

    .line 6
    :cond_3
    :goto_2
    sget v0, Lu0/b;->m3:I

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v1, v0, Lk0/pr;->m:I

    goto :goto_3

    :cond_4
    if-ne v0, v4, :cond_5

    .line 8
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v2, v0, Lk0/pr;->m:I

    goto :goto_3

    .line 9
    :cond_5
    iget-object v0, p0, Lk0/pr$c;->a:Lk0/pr;

    iput v4, v0, Lk0/pr;->m:I

    :goto_3
    const/4 v0, 0x6

    new-array v3, v0, [I

    const/16 v5, 0xe3

    aput v5, v3, v1

    const/16 v1, 0xc1

    aput v1, v3, v2

    const/4 v1, 0x3

    aput v1, v3, v4

    .line 10
    iget-object v2, p0, Lk0/pr$c;->a:Lk0/pr;

    iget v4, v2, Lk0/pr;->k:I

    aput v4, v3, v1

    const/4 v1, 0x4

    iget v4, v2, Lk0/pr;->m:I

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v2, v2, Lk0/pr;->l:I

    shl-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x40

    sget v2, Ly0/f;->C0:I

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
