.class public final synthetic Landroid/view/autofill/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/i;->b:Landroid/view/autofill/AutofillManager;

    iput-boolean p2, p0, Landroid/view/autofill/i;->c:Z

    iput-boolean p3, p0, Landroid/view/autofill/i;->d:Z

    iput-boolean p4, p0, Landroid/view/autofill/i;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/autofill/i;->d:Z

    iget-boolean v1, p0, Landroid/view/autofill/i;->e:Z

    iget-object v2, p0, Landroid/view/autofill/i;->b:Landroid/view/autofill/AutofillManager;

    iget-boolean v3, p0, Landroid/view/autofill/i;->c:Z

    invoke-static {v2, v3, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->f(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method
