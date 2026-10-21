.class public Lui/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public A:Lui/Bar$a;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:[I

.field public l:Landroid/graphics/Rect;

.field public m:Landroid/graphics/Rect;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lui/a$d;->b:Ljava/lang/String;

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lui/a$d;->e:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lui/a$d;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lui/a$d;->g:Z

    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lui/a$d;->h:I

    iput v0, p0, Lui/a$d;->i:I

    const/16 v0, 0x20

    .line 6
    iput v0, p0, Lui/a$d;->j:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    iput-object v0, p0, Lui/a$d;->k:[I

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lui/a$d;->l:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lui/a$d;->m:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x10000
    .end array-data
.end method


# virtual methods
.method public a()Lui/a;
    .locals 1

    .line 1
    new-instance v0, Lui/a;

    invoke-direct {v0, p0}, Lui/a;-><init>(Lui/a$d;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->n:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->w:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->x:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->u:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->s:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->q:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)Lui/a$d;
    .locals 0

    .line 1
    iput p1, p0, Lui/a$d;->c:I

    return-object p0
.end method

.method public i(Z)Lui/a$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lui/a$d;->f:Z

    return-object p0
.end method

.method public j(Landroid/graphics/Rect;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->m:Landroid/graphics/Rect;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->y:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public m(Landroid/view/View$OnClickListener;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->z:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public n(Lui/Bar$a;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->A:Lui/Bar$a;

    return-object p0
.end method

.method public o(I)Lui/a$d;
    .locals 0

    .line 1
    iput p1, p0, Lui/a$d;->e:I

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lui/a$d;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setResDir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lui/a$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public q([I)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->k:[I

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public s(Landroid/graphics/Rect;)Lui/a$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$d;->l:Landroid/graphics/Rect;

    return-object p0
.end method

.method public t(I)Lui/a$d;
    .locals 0

    .line 1
    iput p1, p0, Lui/a$d;->j:I

    return-object p0
.end method

.method public u(I)Lui/a$d;
    .locals 0

    .line 1
    iput p1, p0, Lui/a$d;->d:I

    return-object p0
.end method
