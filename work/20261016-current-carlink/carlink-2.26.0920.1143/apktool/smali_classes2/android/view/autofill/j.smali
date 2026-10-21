.class public final synthetic Landroid/view/autofill/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/j;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/j;->c:I

    iput-boolean p3, p0, Landroid/view/autofill/j;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/view/autofill/j;->c:I

    iget-boolean v1, p0, Landroid/view/autofill/j;->d:Z

    iget-object v2, p0, Landroid/view/autofill/j;->b:Landroid/view/autofill/AutofillManager;

    invoke-static {v2, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->g(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method
