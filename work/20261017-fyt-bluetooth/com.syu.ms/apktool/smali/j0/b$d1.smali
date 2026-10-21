.class public Lj0/b$d1;
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
    iput-object p1, p0, Lj0/b$d1;->e:Lj0/b;

    invoke-direct {p0, p2}, Li0/b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/b$d1;->e:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Li0/c;->g0(Ljava/lang/String;)V

    return-void
.end method
