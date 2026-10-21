.class public Lj0/b$n;
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
    iput-object p1, p0, Lj0/b$n;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object p1

    invoke-virtual {p1}, Lh1/a;->e()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget p1, Lu0/b;->D:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->q()V

    :cond_0
    return-void
.end method
