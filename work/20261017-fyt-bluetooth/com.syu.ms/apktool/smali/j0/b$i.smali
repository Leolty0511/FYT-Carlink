.class public Lj0/b$i;
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
    iput-object p1, p0, Lj0/b$i;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lh0/g;->c3(I)V

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 3
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lh0/g;->c3(I)V

    :cond_1
    :goto_0
    return-void
.end method
