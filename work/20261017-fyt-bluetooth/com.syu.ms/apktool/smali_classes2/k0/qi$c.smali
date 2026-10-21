.class public Lk0/qi$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qi;


# direct methods
.method public constructor <init>(Lk0/qi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qi$c;->a:Lk0/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/qi$c;->a:Lk0/qi;

    iget v1, v0, Lk0/qi;->k:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_2

    .line 2
    iput v2, v0, Lk0/qi;->k:I

    .line 3
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 4
    sget v1, Lu0/b;->j4:I

    const/4 v2, 0x3

    const/16 v3, 0x84

    const/16 v4, 0xe3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v8, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v1, v0, Lk0/qi;->h:I

    or-int/2addr v1, v7

    iput v1, v0, Lk0/qi;->h:I

    new-array v0, v6, [I

    aput v4, v0, v5

    aput v3, v0, v8

    aput v8, v0, v7

    aput v1, v0, v2

    .line 6
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Lk0/qi;->h:I

    and-int/lit16 v1, v1, 0xfd

    iput v1, v0, Lk0/qi;->h:I

    new-array v0, v6, [I

    aput v4, v0, v5

    aput v3, v0, v8

    aput v8, v0, v7

    aput v1, v0, v2

    .line 8
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
