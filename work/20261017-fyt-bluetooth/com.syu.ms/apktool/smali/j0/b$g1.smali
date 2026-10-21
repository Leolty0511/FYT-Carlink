.class public Lj0/b$g1;
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
    iput-object p1, p0, Lj0/b$g1;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lj0/b$g1;->e:Lj0/b;

    invoke-static {p2, p1}, Lj0/b;->n(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lj0/b$g1;->e:Lj0/b;

    invoke-static {v0}, Lj0/b;->l(Lj0/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lj0/b$g1;->e:Lj0/b;

    const-string v0, "000000000000"

    invoke-static {p1, v0}, Lj0/b;->m(Lj0/b;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p2}, Li0/c;->p()V

    return-void
.end method
