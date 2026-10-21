.class public Lj0/b$a1;
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
    iput-object p1, p0, Lj0/b$a1;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Activation failed (error code: %s)"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh0/e;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
