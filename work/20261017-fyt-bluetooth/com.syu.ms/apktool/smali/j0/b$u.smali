.class public Lj0/b$u;
.super Li0/a;
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
    iput-object p1, p0, Lj0/b$u;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj0/b$u;->e:Lj0/b;

    invoke-static {p1}, Lj0/b;->f(Lj0/b;)Li0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj0/b$u;->e:Lj0/b;

    invoke-static {p1}, Lj0/b;->f(Lj0/b;)Li0/c;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Li0/c;->Y(I)V

    :cond_0
    return-void
.end method
