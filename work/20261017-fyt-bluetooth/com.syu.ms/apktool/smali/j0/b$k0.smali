.class public Lj0/b$k0;
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
    iput-object p1, p0, Lj0/b$k0;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lj0/b$k0;->e:Lj0/b;

    invoke-static {p2, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Li0/c;->r0(Z)V

    .line 3
    iget-object p2, p0, Lj0/b$k0;->e:Lj0/b;

    invoke-static {p2}, Lj0/b;->h(Lj0/b;)Li0/c;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lj0/b$k0;->e:Lj0/b;

    invoke-static {p2}, Lj0/b;->h(Lj0/b;)Li0/c;

    move-result-object p2

    invoke-virtual {p2}, Li0/c;->y()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lj0/b$k0;->e:Lj0/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lj0/b;->i(Lj0/b;Li0/c;)Li0/c;

    :cond_0
    return-void
.end method
