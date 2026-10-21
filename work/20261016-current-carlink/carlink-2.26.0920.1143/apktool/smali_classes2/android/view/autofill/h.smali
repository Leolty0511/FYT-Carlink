.class public final synthetic Landroid/view/autofill/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/IntentSender;

.field public final synthetic f:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/h;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/h;->c:I

    iput p3, p0, Landroid/view/autofill/h;->d:I

    iput-object p4, p0, Landroid/view/autofill/h;->e:Landroid/content/IntentSender;

    iput-object p5, p0, Landroid/view/autofill/h;->f:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/h;->e:Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/view/autofill/h;->f:Landroid/content/Intent;

    iget-object v2, p0, Landroid/view/autofill/h;->b:Landroid/view/autofill/AutofillManager;

    iget v3, p0, Landroid/view/autofill/h;->c:I

    iget v4, p0, Landroid/view/autofill/h;->d:I

    invoke-static {v2, v3, v4, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->i(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
