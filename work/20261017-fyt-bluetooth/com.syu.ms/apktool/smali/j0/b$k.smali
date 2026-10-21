.class public Lj0/b$k;
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
.field public final e:I

.field public final synthetic f:Lj0/b;


# direct methods
.method public varargs constructor <init>(Lj0/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/b$k;->f:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    const/16 p1, 0xe

    .line 2
    iput p1, p0, Lj0/b$k;->e:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0xe

    :goto_0
    if-ge v0, v1, :cond_2

    mul-int/lit8 v2, v0, 0xe

    add-int/lit8 v3, v2, 0xc

    .line 2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "000000000000"

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    iget-object v5, p0, Lj0/b$k;->f:Lj0/b;

    invoke-static {v5, v4}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object v4

    add-int/lit8 v2, v2, 0xd

    .line 5
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0xe

    .line 6
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-virtual {v4, v3}, Li0/c;->d0(I)V

    .line 8
    invoke-virtual {v4, v2}, Li0/c;->Y(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
