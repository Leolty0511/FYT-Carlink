.class public Lk0/bh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bh;


# direct methods
.method public constructor <init>(Lk0/bh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bh$b;->a:Lk0/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/bh$b;->a:Lk0/bh;

    invoke-static {v0}, Lk0/bh;->a3(Lk0/bh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/bh$b;->a:Lk0/bh;

    iput-byte v1, v0, Lk0/bh;->f:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0x0
        0x0
    .end array-data
.end method
