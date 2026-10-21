.class public final synthetic Landroid/view/autofill/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/c;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/c;->c:I

    iput-object p3, p0, Landroid/view/autofill/c;->d:Ljava/util/List;

    iput-object p4, p0, Landroid/view/autofill/c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/c;->d:Ljava/util/List;

    iget-object v1, p0, Landroid/view/autofill/c;->e:Ljava/util/List;

    iget-object v2, p0, Landroid/view/autofill/c;->b:Landroid/view/autofill/AutofillManager;

    iget v3, p0, Landroid/view/autofill/c;->c:I

    invoke-static {v2, v3, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->e(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method
