.class public Landroid/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$b;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/internal/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    .line 4
    iput p2, p0, Landroid/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Landroid/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    invoke-static {v0}, Landroid/app/AlertDialog;->access$000(Landroid/app/AlertDialog;)Lcom/android/internal/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$b;->a(Lcom/android/internal/app/AlertController;)V

    .line 3
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$b;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$b;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$b;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$b;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$b;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->o:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    .line 2
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->H:Ljava/lang/String;

    .line 3
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->g:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput p1, v0, Lcom/android/internal/app/AlertController$b;->c:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/android/internal/app/AlertController$b;->c:I

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->J:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$b;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->B:[Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$b;->C:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 9
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    .line 10
    iput-object p4, v0, Lcom/android/internal/app/AlertController$b;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 11
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->I:Ljava/lang/String;

    .line 12
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->H:Ljava/lang/String;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->C:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 6
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 7
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->B:[Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->C:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->m:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->m:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->p:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->q:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->r:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lcom/android/internal/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->M:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, p1, Lcom/android/internal/app/AlertController$b;->E:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->G:Landroid/database/Cursor;

    .line 6
    iput-object p4, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput p2, v0, Lcom/android/internal/app/AlertController$b;->E:I

    .line 8
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->H:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 14
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    .line 15
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 16
    iput p2, v0, Lcom/android/internal/app/AlertController$b;->E:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 10
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    .line 11
    iput-object p3, v0, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    iput p2, v0, Lcom/android/internal/app/AlertController$b;->E:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->A:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$b;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$b;->A:Z

    .line 5
    iput p2, v0, Lcom/android/internal/app/AlertController$b;->w:I

    .line 6
    iput p3, v0, Lcom/android/internal/app/AlertController$b;->x:I

    .line 7
    iput p4, v0, Lcom/android/internal/app/AlertController$b;->y:I

    .line 8
    iput p5, v0, Lcom/android/internal/app/AlertController$b;->z:I

    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
