.class public final synthetic Landroid/view/autofill/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/autofill/AutofillId;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:Landroid/view/autofill/IAutofillWindowPresenter;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/g;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/g;->c:I

    iput-object p3, p0, Landroid/view/autofill/g;->d:Landroid/view/autofill/AutofillId;

    iput p4, p0, Landroid/view/autofill/g;->e:I

    iput p5, p0, Landroid/view/autofill/g;->f:I

    iput-object p6, p0, Landroid/view/autofill/g;->g:Landroid/graphics/Rect;

    iput-object p7, p0, Landroid/view/autofill/g;->h:Landroid/view/autofill/IAutofillWindowPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/view/autofill/g;->b:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/g;->c:I

    iget-object v2, p0, Landroid/view/autofill/g;->d:Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/g;->e:I

    iget v4, p0, Landroid/view/autofill/g;->f:I

    iget-object v5, p0, Landroid/view/autofill/g;->g:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/autofill/g;->h:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-static/range {v0 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->b(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method
