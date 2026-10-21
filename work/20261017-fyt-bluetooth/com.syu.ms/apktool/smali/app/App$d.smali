.class public Lapp/App$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/App;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lapp/App;


# direct methods
.method public constructor <init>(Lapp/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/App$d;->b:Lapp/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    .line 2
    iput p1, p0, Lapp/App$d;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/App$d;->a:I

    return v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 9

    const/16 p2, 0xb

    .line 1
    invoke-static {p2}, Lg/f;->f(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo v0, "ui/vol/syu_htop/7870/"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ui/vol/syu_htop/"

    :goto_0
    const/16 v1, 0x1c

    const-string v2, "1280/"

    const/16 v3, 0x18

    const-string v4, "1024/"

    const/16 v5, 0x26

    const-string v6, "1920/"

    const/16 v7, 0x424

    const/16 v8, 0x578

    if-eqz p2, :cond_4

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "2000/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2d

    .line 3
    iput p2, p0, Lapp/App$d;->a:I

    goto/16 :goto_1

    :cond_1
    if-lt p1, v8, :cond_2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput v5, p0, Lapp/App$d;->a:I

    goto :goto_1

    :cond_2
    if-le p1, v7, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iput v1, p0, Lapp/App$d;->a:I

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iput v3, p0, Lapp/App$d;->a:I

    goto :goto_1

    :cond_4
    if-lt p1, v8, :cond_5

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iput v5, p0, Lapp/App$d;->a:I

    goto :goto_1

    :cond_5
    if-le p1, v7, :cond_6

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput v1, p0, Lapp/App$d;->a:I

    goto :goto_1

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput v3, p0, Lapp/App$d;->a:I

    :goto_1
    return-object p1
.end method
