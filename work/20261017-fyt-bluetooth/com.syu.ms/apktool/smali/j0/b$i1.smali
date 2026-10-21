.class public Lj0/b$i1;
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
    iput-object p1, p0, Lj0/b$i1;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lj0/b$i1;->e:Lj0/b;

    invoke-static {p2, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Li0/c;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Li0/c;->w()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Li0/c;->o(Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 4
    invoke-virtual {p1, p2}, Li0/c;->d0(I)V

    .line 5
    sget p2, Lh0/c;->M:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string p2, ""

    .line 6
    invoke-virtual {p1, p2}, Li0/c;->c0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
