.class public Lj0/b$m;
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
    iput-object p1, p0, Lj0/b$m;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lj0/b$m;->e:Lj0/b;

    invoke-static {p2}, Lj0/b;->j(Lj0/b;)Li0/c;

    move-result-object p2

    if-nez p2, :cond_3

    .line 2
    iget-object p2, p0, Lj0/b$m;->e:Lj0/b;

    invoke-static {p2, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    sput p2, Lh0/c;->U:I

    .line 4
    iget-object v0, p0, Lj0/b$m;->e:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->k(Lj0/b;Li0/c;)Li0/c;

    .line 5
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "com.syu.bt.phone.voice"

    const-string v2, "com.syu.bt"

    .line 6
    invoke-static {v1, v2}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 8
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v2}, Lu0/h;->c(I)V

    .line 9
    new-instance v1, Lj0/b$m$a;

    invoke-direct {v1, p0}, Lj0/b$m$a;-><init>(Lj0/b$m;)V

    sput-object v1, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 10
    iget-object v1, p0, Lj0/b$m;->e:Lj0/b;

    invoke-static {v1}, Lj0/b;->o(Lj0/b;)Lz/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lz/e;->e(Z)V

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Li0/c;->w0(Z)V

    .line 12
    sget-object p1, Lh0/d;->j:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    :cond_3
    return-void
.end method
