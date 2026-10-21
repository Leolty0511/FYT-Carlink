.class public Lk0/bl$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bl;


# direct methods
.method public constructor <init>(Lk0/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bl$g;->a:Lk0/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/bl$g;->a:Lk0/bl;

    iget v1, v0, Lk0/bl;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/bl;->o:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    if-gt v1, v2, :cond_0

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0xd

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v5, 0x91

    aput v5, v0, v2

    const/4 v2, 0x3

    const/16 v5, 0x20

    aput v5, v0, v2

    const/4 v2, 0x4

    .line 3
    sget v5, Ly0/f;->c:I

    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v0, v2

    const/16 v2, 0xa

    rem-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v3

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v5, 0x7

    aput v4, v0, v5

    const/16 v5, 0x8

    aput v4, v0, v5

    const/16 v5, 0x9

    aput v4, v0, v5

    aput v4, v0, v2

    const/16 v2, 0xb

    aput v4, v0, v2

    const/16 v2, 0xc

    aput v4, v0, v2

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v1, 0x3f01bc

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, v0, Lk0/bl;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/bl$g;->a:Lk0/bl;

    iput v3, v0, Lk0/bl;->o:I

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x53
    .end array-data
.end method
