.class public Lk0/pp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pp;


# direct methods
.method public constructor <init>(Lk0/pp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pp$a;->a:Lk0/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 2
    iget-object v1, p0, Lk0/pp$a;->a:Lk0/pp;

    iget v2, v1, Lk0/pp;->e:I

    if-eq v2, v0, :cond_0

    .line 3
    iput v0, v1, Lk0/pp;->e:I

    const/16 v1, 0x13

    new-array v1, v1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0xc6

    aput v4, v1, v2

    const/4 v2, 0x2

    const/16 v4, 0x10

    aput v4, v1, v2

    const/4 v5, 0x3

    aput v2, v1, v5

    const/4 v2, 0x4

    .line 4
    div-int/lit8 v5, v0, 0x3c

    aput v5, v1, v2

    const/4 v2, 0x5

    rem-int/lit8 v0, v0, 0x3c

    aput v0, v1, v2

    const/4 v0, 0x6

    aput v3, v1, v0

    const/4 v0, 0x7

    aput v3, v1, v0

    const/16 v0, 0x8

    aput v3, v1, v0

    const/16 v0, 0x9

    aput v3, v1, v0

    const/16 v0, 0xa

    aput v3, v1, v0

    const/16 v0, 0xb

    aput v3, v1, v0

    const/16 v0, 0xc

    aput v3, v1, v0

    const/16 v0, 0xd

    aput v3, v1, v0

    const/16 v0, 0xe

    aput v3, v1, v0

    const/16 v0, 0xf

    aput v3, v1, v0

    aput v3, v1, v4

    const/16 v0, 0x11

    aput v3, v1, v0

    const/16 v0, 0x12

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
