.class public Lcom/android/internal/app/AlertController$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$b$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:[Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public G:Landroid/database/Cursor;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public L:Lcom/android/internal/app/AlertController$b$e;

.field public M:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:Landroid/view/View;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/app/AlertController$b;->c:I

    .line 3
    iput v0, p0, Lcom/android/internal/app/AlertController$b;->e:I

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$b;->A:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/app/AlertController$b;->E:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$b;->M:Z

    .line 7
    iput-object p1, p0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    .line 8
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$b;->o:Z

    const-string v0, "layout_inflater"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/internal/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/internal/app/AlertController;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->z(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->E(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->B(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$b;->c:I

    if-ltz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->A(I)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/internal/app/AlertController$b;->e:I

    if-lez v0, :cond_4

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->s(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->A(I)V

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->D(Ljava/lang/CharSequence;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->i:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    .line 14
    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->y(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x2

    .line 16
    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->y(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x3

    .line 18
    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->y(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$b;->J:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->C(Z)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 22
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController$b;->b(Lcom/android/internal/app/AlertController;)V

    .line 23
    :cond_b
    iget-object v2, p0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 24
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$b;->A:Z

    if-eqz v0, :cond_c

    .line 25
    iget v3, p0, Lcom/android/internal/app/AlertController$b;->w:I

    iget v4, p0, Lcom/android/internal/app/AlertController$b;->x:I

    iget v5, p0, Lcom/android/internal/app/AlertController$b;->y:I

    iget v6, p0, Lcom/android/internal/app/AlertController$b;->z:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/AlertController;->G(Landroid/view/View;IIII)V

    goto :goto_1

    .line 26
    :cond_c
    invoke-virtual {p1, v2}, Lcom/android/internal/app/AlertController;->F(Landroid/view/View;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public final b(Lcom/android/internal/app/AlertController;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->n(Lcom/android/internal/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$b;->C:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 4
    new-instance v9, Lcom/android/internal/app/AlertController$b$a;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->o(Lcom/android/internal/app/AlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$b$a;-><init>(Lcom/android/internal/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    goto :goto_2

    .line 5
    :cond_0
    new-instance v9, Lcom/android/internal/app/AlertController$b$b;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$b$b;-><init>(Lcom/android/internal/app/AlertController$b;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$b;->D:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->c(Lcom/android/internal/app/AlertController;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->d(Lcom/android/internal/app/AlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    .line 7
    iget-object v5, p0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    const v1, 0x1020014

    if-nez v5, :cond_4

    .line 8
    iget-object v2, p0, Lcom/android/internal/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 9
    :cond_4
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$b;->H:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v10, v8, [I

    aput v1, v10, v7

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 10
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController$b;->L:Lcom/android/internal/app/AlertController$b$e;

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v1, v0}, Lcom/android/internal/app/AlertController$b$e;->a(Landroid/widget/ListView;)V

    .line 12
    :cond_5
    invoke-static {p1, v9}, Lcom/android/internal/app/AlertController;->e(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 13
    iget v1, p0, Lcom/android/internal/app/AlertController$b;->E:I

    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->f(Lcom/android/internal/app/AlertController;I)I

    .line 14
    iget-object v1, p0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 15
    new-instance v1, Lcom/android/internal/app/AlertController$b$c;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AlertController$b$c;-><init>(Lcom/android/internal/app/AlertController$b;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/AlertController$b;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 17
    new-instance v1, Lcom/android/internal/app/AlertController$b$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/AlertController$b$d;-><init>(Lcom/android/internal/app/AlertController$b;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$b;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 20
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$b;->D:Z

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_4

    .line 22
    :cond_9
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$b;->C:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 24
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$b;->M:Z

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$RecycleListView;->a:Z

    .line 25
    invoke-static {p1, v0}, Lcom/android/internal/app/AlertController;->g(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method
