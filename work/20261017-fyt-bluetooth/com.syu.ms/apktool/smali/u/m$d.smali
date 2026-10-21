.class public Lu/m$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/m$d$b;,
        Lu/m$d$a;,
        Lu/m$d$c;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/os/Message;

.field public d:Lu/m$c;

.field public e:Z

.field public f:[Lu/m$d$c;

.field public g:I

.field public h:[Lu/m$d$c;

.field public i:I

.field public j:Lu/m$d$a;

.field public k:Lu/m$d$b;

.field public l:Lu/m;

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lu/l;",
            "Lu/m$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lu/l;

.field public o:Lu/l;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu/m$d;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lu/m;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lu/m$d;->a:Z

    .line 4
    iput-boolean p1, p0, Lu/m$d;->b:Z

    .line 5
    new-instance p1, Lu/m$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lu/m$c;-><init>(Lu/m$a;)V

    iput-object p1, p0, Lu/m$d;->d:Lu/m$c;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lu/m$d;->g:I

    .line 7
    new-instance p1, Lu/m$d$a;

    invoke-direct {p1, p0, v0}, Lu/m$d$a;-><init>(Lu/m$d;Lu/m$a;)V

    iput-object p1, p0, Lu/m$d;->j:Lu/m$d$a;

    .line 8
    new-instance p1, Lu/m$d$b;

    invoke-direct {p1, p0, v0}, Lu/m$d$b;-><init>(Lu/m$d;Lu/m$a;)V

    iput-object p1, p0, Lu/m$d;->k:Lu/m$d$b;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lu/m$d;->m:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    .line 11
    iput-object p2, p0, Lu/m$d;->l:Lu/m;

    .line 12
    iget-object p1, p0, Lu/m$d;->j:Lu/m$d$a;

    invoke-virtual {p0, p1, v0}, Lu/m$d;->t(Lu/l;Lu/l;)Lu/m$d$c;

    .line 13
    iget-object p1, p0, Lu/m$d;->k:Lu/m$d$b;

    invoke-virtual {p0, p1, v0}, Lu/m$d;->t(Lu/l;Lu/l;)Lu/m$d$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Lu/m;Lu/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lu/m$d;-><init>(Landroid/os/Looper;Lu/m;)V

    return-void
.end method

.method public static synthetic a(Lu/m$d;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->x()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lu/m$d;)Lu/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->y()Lu/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lu/m$d;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m$d;->M(Lu/g;)V

    return-void
.end method

.method public static synthetic d(Lu/m$d;)Lu/m$d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m$d;->j:Lu/m$d$a;

    return-object p0
.end method

.method public static synthetic e(Lu/m$d;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m$d;->w(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic f(Lu/m$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lu/m$d;->b:Z

    return p0
.end method

.method public static synthetic g(Lu/m$d;)Lu/m$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m$d;->d:Lu/m$c;

    return-object p0
.end method

.method public static synthetic h(Lu/m$d;)[Lu/m$d$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m$d;->f:[Lu/m$d$c;

    return-object p0
.end method

.method public static synthetic i(Lu/m$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lu/m$d;->g:I

    return p0
.end method

.method public static synthetic j(Lu/m$d;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m$d;->o:Lu/l;

    return-object p0
.end method

.method public static synthetic k(Lu/m$d;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m$d;->C(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lu/m$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->quit()V

    return-void
.end method

.method public static synthetic m(Lu/m$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->H()V

    return-void
.end method

.method public static synthetic n(Lu/m$d;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->B()Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lu/m$d;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m$d;->I(Z)V

    return-void
.end method

.method public static synthetic p(Lu/m$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m$d;->v()V

    return-void
.end method

.method public static synthetic q(Lu/m$d;)Lu/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m$d;->l:Lu/m;

    return-object p0
.end method

.method public static synthetic r(Lu/m$d;Lu/l;Lu/l;)Lu/m$d$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu/m$d;->t(Lu/l;Lu/l;)Lu/m$d$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lu/m$d;Lu/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m$d;->J(Lu/l;)V

    return-void
.end method


# virtual methods
.method public final A(Lu/m$d$c;)V
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lu/m$d;->g:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lu/m$d;->f:[Lu/m$d$c;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 2
    aget-object v0, v1, v0

    iget-object v0, v0, Lu/m$d$c;->a:Lu/l;

    .line 3
    iget-boolean v1, p0, Lu/m$d;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lu/m$d;->l:Lu/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lu/l;->exit()V

    .line 5
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget v1, p0, Lu/m$d;->g:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lu/m$d$c;->c:Z

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, p0, Lu/m$d;->g:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    return v0
.end method

.method public final C(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lu/m$d;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final D()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 3
    iget-boolean v2, p0, Lu/m$d;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu/m$d;->l:Lu/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/m;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final E()I
    .locals 6

    .line 1
    iget v0, p0, Lu/m$d;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Lu/m$d;->i:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-boolean v3, p0, Lu/m$d;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lu/m$d;->l:Lu/m;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu/m;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v3, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget-object v4, p0, Lu/m$d;->h:[Lu/m$d$c;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Lu/m$d;->g:I

    .line 6
    iget-boolean v1, p0, Lu/m$d;->b:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lu/m$d;->l:Lu/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lu/m$d;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget v4, p0, Lu/m$d;->g:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v3}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final F(Lu/l;Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget v1, p0, Lu/m$d;->g:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lu/m$d$c;->a:Lu/l;

    .line 2
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    iget-object v1, p0, Lu/m$d;->c:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lu/m;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lu/m$d;->q:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lu/m$d;->d:Lu/m$c;

    invoke-virtual {v0}, Lu/m$c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lu/m$d;->o:Lu/l;

    if-eqz p2, :cond_2

    .line 5
    iget-object v1, p0, Lu/m$d;->d:Lu/m$c;

    iget-object v2, p0, Lu/m$d;->l:Lu/m;

    iget-object v3, p0, Lu/m$d;->c:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lu/m;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lu/m$d;->o:Lu/l;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lu/m$c;->b(Lu/m;Landroid/os/Message;Ljava/lang/String;Lu/g;Lu/g;Lu/g;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iget-object v1, p0, Lu/m$d;->d:Lu/m$c;

    iget-object v2, p0, Lu/m$d;->l:Lu/m;

    iget-object v3, p0, Lu/m$d;->c:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lu/m;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lu/m$d;->o:Lu/l;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lu/m$c;->b(Lu/m;Landroid/os/Message;Ljava/lang/String;Lu/g;Lu/g;Lu/g;)V

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lu/m$d;->o:Lu/l;

    if-eqz p1, :cond_5

    .line 8
    :goto_2
    iget-boolean p2, p0, Lu/m$d;->b:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lu/m$d;->l:Lu/m;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lu/m;->log(Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lu/m$d;->L(Lu/l;)Lu/m$d$c;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Lu/m$d;->A(Lu/m$d$c;)V

    .line 11
    invoke-virtual {p0}, Lu/m$d;->E()I

    move-result p2

    .line 12
    invoke-virtual {p0, p2}, Lu/m$d;->z(I)V

    .line 13
    invoke-virtual {p0}, Lu/m$d;->D()V

    .line 14
    iget-object p2, p0, Lu/m$d;->o:Lu/l;

    if-eq p1, p2, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lu/m$d;->o:Lu/l;

    :cond_5
    if-eqz p1, :cond_7

    .line 16
    iget-object p2, p0, Lu/m$d;->k:Lu/m$d$b;

    if-ne p1, p2, :cond_6

    .line 17
    iget-object p1, p0, Lu/m$d;->l:Lu/m;

    invoke-virtual {p1}, Lu/m;->onQuitting()V

    .line 18
    invoke-virtual {p0}, Lu/m$d;->u()V

    goto :goto_3

    .line 19
    :cond_6
    iget-object p2, p0, Lu/m$d;->j:Lu/m$d$a;

    if-ne p1, p2, :cond_7

    .line 20
    iget-object p1, p0, Lu/m$d;->l:Lu/m;

    invoke-virtual {p1}, Lu/m;->onHalting()V

    :cond_7
    :goto_3
    return-void
.end method

.method public final G(Landroid/os/Message;)Lu/l;
    .locals 5

    .line 1
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget v1, p0, Lu/m$d;->g:I

    aget-object v0, v0, v1

    .line 2
    iget-boolean v1, p0, Lu/m$d;->b:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lu/m$d;->l:Lu/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v4}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lu/m;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lu/m$d;->C(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lu/m$d;->k:Lu/m$d$b;

    invoke-virtual {p0, p1}, Lu/m$d;->M(Lu/g;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, v0, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v1, p1}, Lu/l;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v0, v0, Lu/m$d$c;->b:Lu/m$d$c;

    if-nez v0, :cond_2

    .line 8
    iget-object v1, p0, Lu/m$d;->l:Lu/m;

    invoke-virtual {v1, p1}, Lu/m;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean v1, p0, Lu/m$d;->b:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lu/m$d;->l:Lu/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v4}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lu/m;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 11
    iget-object p1, v0, Lu/m$d$c;->a:Lu/l;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    sget-object v1, Lu/m$d;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/m$d;->b:Z

    return-void
.end method

.method public final J(Lu/l;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lu/m$d;->n:Lu/l;

    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu/m$d;->n:Lu/l;

    invoke-virtual {v2}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lu/m$d;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lu/m$d;->n:Lu/l;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/m$d$c;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lu/m$d;->i:I

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lu/m$d;->h:[Lu/m$d$c;

    iget v2, p0, Lu/m$d;->i:I

    aput-object v0, v1, v2

    .line 6
    iget-object v0, v0, Lu/m$d$c;->b:Lu/m$d$c;

    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, p0, Lu/m$d;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lu/m$d;->g:I

    .line 9
    invoke-virtual {p0}, Lu/m$d;->E()I

    return-void
.end method

.method public final L(Lu/l;)Lu/m$d$c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lu/m$d;->i:I

    .line 2
    iget-object v0, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/m$d$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lu/m$d;->h:[Lu/m$d$c;

    iget v1, p0, Lu/m$d;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu/m$d;->i:I

    aput-object p1, v0, v1

    .line 4
    iget-object p1, p1, Lu/m$d$c;->b:Lu/m$d$c;

    if-eqz p1, :cond_1

    .line 5
    iget-boolean v0, p1, Lu/m$d$c;->c:Z

    if-eqz v0, :cond_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lu/m$d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",curStateInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public final M(Lu/g;)V
    .locals 2

    .line 1
    check-cast p1, Lu/l;

    iput-object p1, p0, Lu/m$d;->o:Lu/l;

    .line 2
    iget-boolean p1, p0, Lu/m$d;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu/m$d;->l:Lu/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/m$d;->o:Lu/l;

    invoke-virtual {v1}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/m$d;->a:Z

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lu/m$d;->c:Landroid/os/Message;

    const/4 v0, 0x0

    .line 4
    iget-boolean v1, p0, Lu/m$d;->e:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lu/m$d;->G(Landroid/os/Message;)Lu/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lu/m$d;->q:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lu/m$d;->e:Z

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lu/m$d;->z(I)V

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p1}, Lu/m$d;->F(Lu/l;Landroid/os/Message;)V

    .line 10
    iget-boolean p1, p0, Lu/m$d;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lu/m$d;->l:Lu/m;

    if-eqz p1, :cond_3

    const-string v0, "handleMessage: X"

    invoke-virtual {p1, v0}, Lu/m;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final quit()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    sget-object v1, Lu/m$d;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final t(Lu/l;Lu/l;)Lu/m$d$c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object v1, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/m$d$c;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0, p2, v0}, Lu/m$d;->t(Lu/l;Lu/l;)Lu/m$d$c;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 5
    :cond_3
    :goto_1
    iget-object p2, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu/m$d$c;

    if-nez p2, :cond_4

    .line 6
    new-instance p2, Lu/m$d$c;

    invoke-direct {p2, p0, v0}, Lu/m$d$c;-><init>(Lu/m$d;Lu/m$a;)V

    .line 7
    iget-object v0, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object v0, p2, Lu/m$d$c;->b:Lu/m$d$c;

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "state already added"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    :goto_2
    iput-object p1, p2, Lu/m$d$c;->a:Lu/l;

    .line 11
    iput-object v1, p2, Lu/m$d$c;->b:Lu/m$d$c;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p2, Lu/m$d$c;->c:Z

    .line 13
    iget-boolean p1, p0, Lu/m$d;->b:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lu/m$d;->l:Lu/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addStateInternal: X stateInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->log(Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    invoke-static {v0}, Lu/m;->access$400(Lu/m;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    invoke-static {v0, v1}, Lu/m;->access$402(Lu/m;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 4
    :cond_0
    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    invoke-static {v0, v1}, Lu/m;->access$502(Lu/m;Lu/m$d;)Lu/m$d;

    .line 5
    iput-object v1, p0, Lu/m$d;->l:Lu/m;

    .line 6
    iput-object v1, p0, Lu/m$d;->c:Landroid/os/Message;

    .line 7
    iget-object v0, p0, Lu/m$d;->d:Lu/m$c;

    invoke-virtual {v0}, Lu/m$c;->c()V

    .line 8
    iput-object v1, p0, Lu/m$d;->f:[Lu/m$d$c;

    .line 9
    iput-object v1, p0, Lu/m$d;->h:[Lu/m$d$c;

    .line 10
    iget-object v0, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    iput-object v1, p0, Lu/m$d;->n:Lu/l;

    .line 12
    iput-object v1, p0, Lu/m$d;->o:Lu/l;

    .line 13
    iget-object v0, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lu/m$d;->a:Z

    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lu/m$d;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/m$d$c;

    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v3, Lu/m$d$c;->b:Lu/m$d$c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    .line 4
    :cond_3
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 5
    :cond_4
    new-array v0, v2, [Lu/m$d$c;

    iput-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    .line 6
    new-array v0, v2, [Lu/m$d$c;

    iput-object v0, p0, Lu/m$d;->h:[Lu/m$d$c;

    .line 7
    invoke-virtual {p0}, Lu/m$d;->K()V

    const/4 v0, -0x2

    .line 8
    sget-object v1, Lu/m$d;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 9
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    const-string v1, "completeConstruction: X"

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final w(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4
    iget-object p1, p0, Lu/m$d;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m$d;->c:Landroid/os/Message;

    return-object v0
.end method

.method public final y()Lu/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    iget v1, p0, Lu/m$d;->g:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lu/m$d$c;->a:Lu/l;

    return-object v0
.end method

.method public final z(I)V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lu/m$d;->g:I

    if-gt p1, v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lu/m$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/m$d;->l:Lu/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeEnterMethods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu/m$d;->f:[Lu/m$d$c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v2}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    aget-object v0, v0, p1

    iget-object v0, v0, Lu/m$d$c;->a:Lu/l;

    invoke-virtual {v0}, Lu/l;->enter()V

    .line 4
    iget-object v0, p0, Lu/m$d;->f:[Lu/m$d$c;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/m$d$c;->c:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
