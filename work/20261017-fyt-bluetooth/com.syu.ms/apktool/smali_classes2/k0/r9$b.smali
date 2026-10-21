.class public Lk0/r9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/r9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/r9;


# direct methods
.method public constructor <init>(Lk0/r9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/r9$b;->a:Lk0/r9;

    sget v1, Lu0/b;->s0:I

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lk0/r9;->c3(Lk0/r9;I)I

    .line 2
    iget-object v0, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-static {v0}, Lk0/r9;->d3(Lk0/r9;)I

    move-result v0

    iget-object v1, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-static {v1}, Lk0/r9;->b3(Lk0/r9;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-static {v0}, Lk0/r9;->b3(Lk0/r9;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/r9;->e3(Lk0/r9;I)I

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    aput v4, v1, v2

    const/4 v2, 0x2

    const/16 v5, 0xe4

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    .line 4
    iget-object v2, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-static {v2}, Lk0/r9;->b3(Lk0/r9;)I

    move-result v2

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v4

    const/4 v0, 0x6

    iget-object v2, p0, Lk0/r9$b;->a:Lk0/r9;

    invoke-static {v2}, Lk0/r9;->b3(Lk0/r9;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    const/4 v0, 0x7

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
