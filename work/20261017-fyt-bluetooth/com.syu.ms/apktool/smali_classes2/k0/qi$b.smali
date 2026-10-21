.class public Lk0/qi$b;
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
    iput-object p1, p0, Lk0/qi$b;->a:Lk0/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/qi$b;->a:Lk0/qi;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/qi;->i:I

    .line 2
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 3
    sget v1, Ly0/f;->Q0:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x84

    const/16 v5, 0xe3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v8, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, Lk0/qi;->h:I

    or-int/2addr v1, v8

    iput v1, v0, Lk0/qi;->h:I

    new-array v0, v7, [I

    aput v5, v0, v6

    aput v4, v0, v8

    aput v8, v0, v3

    aput v1, v0, v2

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    iget v1, v0, Lk0/qi;->h:I

    and-int/lit16 v1, v1, 0xfe

    iput v1, v0, Lk0/qi;->h:I

    new-array v0, v7, [I

    aput v5, v0, v6

    aput v4, v0, v8

    aput v8, v0, v3

    aput v1, v0, v2

    .line 7
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
