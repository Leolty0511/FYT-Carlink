.class public final synthetic Landroid/view/autofill/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/autofill/AutofillId;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/d;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/d;->c:I

    iput-object p3, p0, Landroid/view/autofill/d;->d:Landroid/view/autofill/AutofillId;

    iput-boolean p4, p0, Landroid/view/autofill/d;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/d;->d:Landroid/view/autofill/AutofillId;

    iget-boolean v1, p0, Landroid/view/autofill/d;->e:Z

    iget-object v2, p0, Landroid/view/autofill/d;->b:Landroid/view/autofill/AutofillManager;

    iget v3, p0, Landroid/view/autofill/d;->c:I

    invoke-static {v2, v3, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->j(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method
