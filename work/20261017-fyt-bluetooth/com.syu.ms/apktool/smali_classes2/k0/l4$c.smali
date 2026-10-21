.class public Lk0/l4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l4;


# direct methods
.method public constructor <init>(Lk0/l4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l4$c;->a:Lk0/l4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/l4$c;->a:Lk0/l4;

    iget-byte v1, v0, Lk0/l4;->i:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/l4;->i:B

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lk0/l4;->e3(Lk0/l4;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/l4;->f3(Lk0/l4;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lk0/l4;->d3(Lk0/l4;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/l4$c;->a:Lk0/l4;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/l4;->i:B

    :goto_0
    return-void
.end method
