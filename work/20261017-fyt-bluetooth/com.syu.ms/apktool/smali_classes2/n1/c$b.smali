.class public Ln1/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/graphics/Paint$Align;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V
    .locals 0

    .line 2
    iput-object p1, p0, Ln1/c$b;->i:Ln1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Ln1/c$b;->d:I

    .line 4
    iput-object p3, p0, Ln1/c$b;->a:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ln1/c$b;->b:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Ln1/c$b;->c:Landroid/graphics/Paint$Align;

    .line 7
    iput p6, p0, Ln1/c$b;->e:I

    .line 8
    iput p7, p0, Ln1/c$b;->f:I

    .line 9
    iput p8, p0, Ln1/c$b;->g:I

    .line 10
    iput p9, p0, Ln1/c$b;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Ln1/c;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIIILn1/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Ln1/c$b;-><init>(Ln1/c;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    return-void
.end method

.method public static synthetic a(Ln1/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/c$b;->g:I

    return p0
.end method

.method public static synthetic b(Ln1/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/c$b;->h:I

    return p0
.end method

.method public static synthetic c(Ln1/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/c$b;->e:I

    return p0
.end method

.method public static synthetic d(Ln1/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/c$b;->f:I

    return p0
.end method

.method public static synthetic e(Ln1/c$b;)Landroid/graphics/Paint$Align;
    .locals 0

    .line 1
    iget-object p0, p0, Ln1/c$b;->c:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public static synthetic f(Ln1/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ln1/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Ln1/c$b;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln1/c$b;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/c$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/c$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/c$b;

    .line 3
    iget-object v2, p0, Ln1/c$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ln1/c$b;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    iget v0, p0, Ln1/c$b;->d:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Ln1/c$b;->d:I

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v1}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ln1/c$b;->d:I

    .line 7
    :cond_4
    :goto_0
    iget v0, p0, Ln1/c$b;->e:I

    iget v1, p0, Ln1/c$b;->g:I

    if-le v0, v1, :cond_5

    iput v1, p0, Ln1/c$b;->e:I

    .line 8
    :cond_5
    iget-object v0, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Ln1/c$b;->d:I

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Ln1/c$b;->i:Ln1/c;

    invoke-static {v0}, Ln1/c;->i(Ln1/c;)V

    :cond_6
    :goto_1
    return-void
.end method
