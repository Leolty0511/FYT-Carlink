.class public Lk0/li$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/li;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/li;


# direct methods
.method public constructor <init>(Lk0/li;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/li$c;->a:Lk0/li;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/li$c;->a:Lk0/li;

    iget v1, v0, Lk0/li;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/li;->m:I

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 2
    sget v3, Lu0/b;->a0:I

    const/4 v4, 0x3

    aput v3, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    .line 4
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 5
    iget-object v0, p0, Lk0/li$c;->a:Lk0/li;

    invoke-static {v0}, Lk0/li;->r3(Lk0/li;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/li;->s3(Lk0/li;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/li$c;->a:Lk0/li;

    invoke-static {v0}, Lk0/li;->r3(Lk0/li;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/li;->t3(Lk0/li;I)V

    .line 7
    iget-object v0, p0, Lk0/li$c;->a:Lk0/li;

    invoke-static {v0}, Lk0/li;->r3(Lk0/li;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/li;->u3(Lk0/li;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lk0/li;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/li$c;->a:Lk0/li;

    const/4 v1, 0x5

    iput v1, v0, Lk0/li;->m:I

    :cond_2
    :goto_0
    return-void
.end method
