.class public Lk0/bq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bq;


# direct methods
.method public constructor <init>(Lk0/bq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bq$a;->a:Lk0/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/bq$a;->a:Lk0/bq;

    iget-byte v1, v0, Lk0/bq;->h:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/bq;->h:B

    const/16 v3, 0x14

    if-ne v1, v3, :cond_1

    .line 2
    iput-boolean v2, v0, Lk0/bq;->f:Z

    .line 3
    iget v0, v0, Lk0/bq;->c:I

    const/4 v1, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    .line 4
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    .line 6
    :goto_0
    iget-object v0, p0, Lk0/bq$a;->a:Lk0/bq;

    invoke-static {v0}, Lk0/bq;->a3(Lk0/bq;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/bq$a;->a:Lk0/bq;

    iput-byte v3, v0, Lk0/bq;->h:B

    :cond_1
    return-void
.end method
