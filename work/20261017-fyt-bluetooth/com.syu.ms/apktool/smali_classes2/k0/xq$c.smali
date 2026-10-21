.class public Lk0/xq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xq;


# direct methods
.method public constructor <init>(Lk0/xq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xq$c;->a:Lk0/xq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/xq;->D:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    .line 2
    sget v1, Lk0/xq;->D:I

    if-ne v1, v0, :cond_0

    .line 3
    invoke-static {}, Lk0/xq;->c3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/xq$c;->a:Lk0/xq;

    iget-boolean v1, v0, Lk0/xq;->s:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lk0/xq;->b3(Lk0/xq;Z)V

    .line 7
    :cond_1
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/xq;->D:I

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa5
        0x2
        0x1
        0x0
    .end array-data
.end method
