.class public Lk0/cg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cg;


# direct methods
.method public constructor <init>(Lk0/cg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cg$b;->a:Lk0/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/cg$b;->a:Lk0/cg;

    iget v1, v0, Lk0/cg;->j:I

    sget v2, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/cg;->j:I

    .line 3
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xca

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v4, 0x8

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    .line 4
    sget v3, Ly0/f;->Q0:I

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
