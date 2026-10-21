.class public Lj0/b$c;
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
    iput-object p1, p0, Lj0/b$c;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/b$c;->e:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Li0/c;->c0(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, p2, v0}, Li0/c;->k(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1, v0}, Li0/c;->d0(I)V

    return-void
.end method
