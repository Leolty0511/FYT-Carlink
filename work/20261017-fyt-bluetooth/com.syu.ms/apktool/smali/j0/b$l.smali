.class public Lj0/b$l;
.super Li0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj0/b;


# direct methods
.method public varargs constructor <init>(Lj0/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/b$l;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {p2}, Lj0/b;->j(Lj0/b;)Li0/c;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {p2}, Lj0/b;->j(Lj0/b;)Li0/c;

    move-result-object p2

    invoke-virtual {p2}, Li0/c;->y()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {p2, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Li0/c;->G()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 4
    sput p2, Lh0/c;->U:I

    .line 5
    iget-object v1, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {v1}, Lj0/b;->o(Lj0/b;)Lz/e;

    move-result-object v1

    invoke-virtual {v1}, Lz/e;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lu0/b;->x3:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 8
    :cond_1
    sput-object v0, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 9
    iget-object v1, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {v1}, Lj0/b;->o(Lj0/b;)Lz/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lz/e;->e(Z)V

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Li0/c;->w0(Z)V

    .line 11
    :cond_3
    iget-object p1, p0, Lj0/b$l;->e:Lj0/b;

    invoke-static {p1, v0}, Lj0/b;->k(Lj0/b;Li0/c;)Li0/c;

    :cond_4
    :goto_0
    return-void
.end method
